const SerialPort = require('serialport');
const Readline = require('@serialport/parser-readline');
var fs = require('fs');

connectToArduino = (port) => {
    return new Promise(function(resolve, reject){
        try{
            console.log("Connecting to arduino device...");
            port.on("open", () => {
                console.log("Connection established!");
                resolve();
            });
        }
        catch(err){
            console.log("An error occured while connecting to arduino device!");
            reject(err);
        }
    });
}

disconnectFromArduino = (port) => {
    return new Promise(function(resolve, reject){
        try{
            console.log("Disconnecting from arduino device...");
            port.close();
            console.log("Disconnected successfully!");
            resolve();
        }
        catch(err){
            console.log("An error occured while disconnecting from arduino device!");
            reject();
        }
    });
}

sendRequestToArduino = (port, data) => {
    return new Promise(function(resolve, reject){
        try{
            console.log(`Sending message to arduino device...`);
            console.log(data);
            setTimeout(function(){
                port.write(data);
                console.log("Message sent successfully!");
                resolve();
            },5000);
        }
        catch(err){
            console.log("An error occured while sending message to arduino device");
            reject(err)
        }
    });
}

readResponseFromArduino = (parser) => {
    return new Promise(function(resolve, reject){
        try{
            console.log("Awaiting response from arduino device...");
            parser.on('data', data => {
                var response = data.toString('utf8');
                console.log(`Response received from arduino device...`);
                console.log(response);
                resolve(response);
            });
        }
        catch(err){
            console.log("An error occured while awaiting response from arduino device...");
            reject(err);
        }
    })
}

request = async (requests) => {
    return new Promise(async function(resolve, reject) {
        try{
            var arduinoConfig = fs.readFileSync('../ArduinoPackage/arduino_config.txt', 'utf8').split(',');

            const port = new SerialPort(arduinoConfig[0], {
                baudRate: parseInt(arduinoConfig[1]),
                lock: false
            });
        
            const parser = new Readline();
            port.pipe(parser);

            await connectToArduino(port);
            for(let request of requests){
                await sendRequestToArduino(port, request);
            }
            let response = await readResponseFromArduino(parser);
            await disconnectFromArduino(port);

            resolve(response);
        }
        catch(err){
            console.log("An error occured while awaiting response from arduino device...");
            reject(err);
        }
    });
}

exports.request = request;
exports.commands = {
    REQUESTID: 'r',
    GENERATEMESSAGE: 'm',
    VERIFY: 'v',
    SIGN: 's',
    PUBLICKEY: 'p',
    PRIVATEKEY: 'q',
    MESSAGE: 'y',
    SIGNATURE: 'x'
}