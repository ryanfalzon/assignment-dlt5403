const csv = require('csv-parser');
const fs = require('fs');
const crypto = require('crypto');
const ed25519 = require('ed25519');
const axios = require('axios');
const Iota = require('@iota/core');
const Converter = require('@iota/converter');
const arduino = require('../ArduinoPackage/arduino');
const distributorSeed = fs.readFileSync('keys/distributor.pri', 'utf-8');

const iota = Iota.composeAPI({
    provider: 'https://nodes.comnet.thetangle.org:443'
});

let orderNumber = 1;

processOrder = async (data) => {
    return new Promise(async function(resolve, reject){
        try{
            console.log("Processing order...");

            let packagingBotPort = await findPackagingBot();

            let packageId = await arduino.request([
                arduino.commands.REQUESTID
            ]);

            const message = JSON.stringify({
                orderNumber: orderNumber,
                packageId: packageId
            });

            let transactionHash = await sendToIota(message, data.address);
            let driverKeys = await generateDriverKeys();

            await sendPackageToDriver({
                packageId: packageId,
                publicKey: driverKeys.publicKey.toString('hex'),
                privateKey: driverKeys.privateKey.toString('hex').substring(0, 64)
            });

            console.log("Order processed successfully!");
            resolve({
                orderNumber: orderNumber,
                packageId: packageId,
                transactionHash: transactionHash,
                driverPublicKey: driverKeys.publicKey.toString('hex')
            });
        }
        catch(err){
            console.log("An error occured while processing order!");
            reject(err);
        }
    });
};

findPackagingBot = () => {
    return new Promise(function(resolve, reject){
        try{
            let packagingBots = [];

            console.log("Finding an available packaging bot...");
            fs.createReadStream('packaging-bots.csv')
                .pipe(csv())
                .on('data', (row) => {
                    if(row.available === 'true'){
                        packagingBots.push(row.comport);
                    }
                })
                .on('end', async () => {
                    if(packagingBots.length > 0){
                        let packagingBotPort = packagingBots.pop();
                        console.log(`Packaging bot found on ${packagingBotPort}!`);
                        resolve(packagingBotPort);
                    }
                    else{
                        console.log("No available packaging bot found!");
                        resolve(null);
                    }
                });
        }
        catch(err){
            console.log("An error occured while finding an available packaging bot!");
            reject(err);
        }
    });

    
}

sendToIota = (message, address) => {
    return new Promise(function(resolve, reject){
        try{
            console.log(`Sending the following message in an IOTA transactions: ${message}`);

            const messageInTrytes = Converter.asciiToTrytes(message);
            console.log(`Message was converted to trytes: ${messageInTrytes}`);
            
            const transfers = [
                {
                    value: 0,
                    address: address,
                    message: messageInTrytes
                }
            ];
            
            iota.prepareTransfers(distributorSeed, transfers)
                .then(trytes => {
                    return iota.sendTrytes(trytes, 3, 10);
                })
                .then(bundle => {
                    let transactionHash = bundle[0].hash;
                    console.log(`Transaction was successfully created with the following hash: ${transactionHash}`);
                    resolve(transactionHash);
                })
                .catch(err => {
                    console.log("An error occured while sending transaction to IOTA...");
                    reject(err);
                });
        }
        catch(err){
            console.log("An error occured while sending transaction to IOTA...");
            reject(err);
        }
    });
}

generateDriverKeys = () => {
    return new Promise(function(resolve, reject){
        try{
            console.log("Creating key pair for driver...");

            let driverSeed = crypto.randomBytes(32);
            let driverKeyPair = ed25519.MakeKeypair(driverSeed);

            console.log("Key pair created successfully!");
            resolve(driverKeyPair);
        }
        catch(err){
            console.log("An error occured while creating key pair for driver!");
            reject(err);
        }
    });
}

sendPackageToDriver = (package) => {
    return new Promise(function(resolve, reject) {
        try{
            console.log("Sending package to driver...");
            console.log(package);
            axios.post('http://localhost:3001/DistributePackage', package).then((res) => {
                console.log("Package successfully sent to driver!");
                resolve(res);
            }).catch((error) => {
                console.log(error);
                console.log("An error occured while sending package to driver!");
                reject(error);
            });
        }
        catch(err){
            console.log("An error occured while sending package to driver!");
        }
    })
}

exports.process = processOrder;
exports.orderNumber = orderNumber;