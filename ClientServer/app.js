const express = require("express");
const bodyParser = require('body-parser');
const arduino = require('../ArduinoPackage/arduino');
const axios = require('axios');
const cors = require('cors');
const Iota = require('@iota/core');
const Extract = require('@iota/extract-json');
const fs = require('fs');
const app = express();

let packageId = '';
let publicKey = '';
let message = '';
let signature = '';

var originsWhitelist = [
    'http://localhost:4200'
];

var corsOptions = {
    origin: function(origin, callback){
        var isWhitelisted = originsWhitelist.indexOf(origin) !== -1;
        callback(null, isWhitelisted);
    },
    credentials: true
}

var jsonParser = bodyParser.json();

app.use(cors(corsOptions));

app.get('/', function(req, res) {
    // res.json({ Status: "Running..." });
    submitPayment();
});

app.post('/VerifyTransaction', jsonParser, function (req, res) {
    try{
        console.log(`Verifying transaction with hash ${req.body.transactionHash}...`);

        const iota = Iota.composeAPI({
            provider: 'https://nodes.comnet.thetangle.org:443'
        });

        iota.getBundle(req.body.transactionHash).then(bundle => {
            let transactionPayload = JSON.parse(Extract.extractJson(bundle));
            let isValid = transactionPayload.packageId.trim().valueOf() === req.body.packageId.trim().valueOf();

            if(isValid){
                console.log("Transaction is valid!");
                res.send(JSON.stringify({success: true}));
            }
            else{
                console.log("Transaction is invalid!");
                res.send(JSON.stringify({success: false}));
            }
        }).catch(error => {
            console.log(error);
            console.log("Transaction is invalid!");
            res.send(JSON.stringify({success: false}));
        });
    
        
    }
    catch(err){
        console.log("An error occured while verifying transaction!");
        console.log(err);
        res.send({ success: false });
    }
});

app.post('/InsertOrderDetails', jsonParser, function(req, res) {
    try{
        packageId = req.body.packageId;
        publicKey = req.body.publicKey;
        console.log(`Received order with package ID ${packageId} and driver public key ${publicKey}`);
        res.send({ success: true });
    }
    catch(err){
        console.log("An error occured while accepting order details!");
        console.log(err);
        res.send({ success: false });
    }
});

app.post('/RequestPackageId', jsonParser, async function (req, res) {
    try{
        console.log("Requesting package ID from driver arduino...");

        axios.get('http://localhost:3001/GetPackageId').then((response) => {
            console.log(`${response.data.packageId} received from driver...`);
            
            if(packageId === response.data.packageId){
                console.log("Package IDs match!");
                res.json({ success: true });
            }
            else{
                console.log("Package IDs do not match!");
                res.json({ success: packageId });
            }
        }).catch((error) => {
            console.log(error);
            console.log("An error occured while getting package ID from driver!");
            res.json({ success: false });
        });
    }
    catch(err){
        res.json({ success: false });
    }
});

app.post('/GenerateMessage', async function (req, res) {
    try{
        console.log("Notifying arduino to generate a message...");

        message = (await arduino.request([
            arduino.commands.GENERATEMESSAGE
        ])).toString('utf8');
        console.log(`Message received: ${message}`);

        res.json({ success: true });
    }
    catch(err){
        console.log("An error occured while notifying arduino to generate a message...");
        res.json({ success: false });
    }
});

app.post('/SendMessage', jsonParser, async function (req, res) {
    try{
        console.log("Requesting message signature from driver...");

        axios.post('http://localhost:3001/SignMessage', { message: message }).then((response) => {
            signature = response.data.signature;
            console.log(`Signature received from driver!`);
            console.log(signature);
            res.json({ success: true });
        }).catch((error) => {
            console.log("An error occured while getting message signature from driver!");
            console.log(error);
            res.json({ success: false });
        });
    }
    catch(err){
        res.json({ success: false });
    }
});

app.post('/VerifySignature', jsonParser, async function (req, res) {
    try{
        let verified = (await arduino.request([
            arduino.commands.VERIFY,
            message,
            signature,
            publicKey
        ])).toString('utf8');

        if(verified.trim().valueOf() === "true"){
            console.log("Access Granted!");

            if((await submitPayment())){
                res.json({ success: true });
            }
            else{
                res.json({ success: false });
            }
        }
        else{
            console.log("Access Denied!");
            res.json({ success: false });
        }
    }
    catch(err){
        console.log("An error occured while verifying signature!");
        console.log(err);
        res.json({ success: false });
    }
});

submitPayment = async () => {
    const iota = Iota.composeAPI({
        provider: 'https://nodes.comnet.thetangle.org:443'
    });

    const clientSeed = fs.readFileSync('keys/client.pri', 'utf-8');
    const distributorAddress = fs.readFileSync('../DistributorServer/keys/distributor.pub', 'utf-8');

    const transfers = [{
        value: 1,
        address: distributorAddress
    }];

    try {
        const trytes = await iota.prepareTransfers(clientSeed, transfers);
        await iota.sendTrytes(trytes, 3, 10);

        console.log("Payment sent successfully!");
        return true;
    }
    catch (error) {
        console.log("An error occured while sending payment!");
        console.log(error);
        return false;
    }
}

app.listen(3002, () => {
    console.log("Client Server running on port 3002");
});