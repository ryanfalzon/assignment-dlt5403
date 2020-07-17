const express = require("express");
const bodyParser = require('body-parser');
const cors = require('cors');
const arduino = require('../ArduinoPackage/arduino');
const app = express();

let packageId = '';
let publicKey = '';
let privateKey = '';

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
    res.json({ Status: "Running..." });
});

app.post('/DistributePackage', jsonParser, function (req, res) {
    try{
        console.log(`New package received: ${JSON.stringify(req.body)}`);

        packageId = req.body.packageId;
        publicKey = req.body.publicKey;
        privateKey = req.body.privateKey;

        res.send({ success: true });
    }
    catch(err){
        console.log("An error occurred while distributing package!");
        console.log(err);
        res.send({ success: false });
    }
});

app.get('/GetPackageId', function(req, res) {
    try{
        console.log(`Sending package ID: ${packageId}`)
        res.json({ packageId: packageId });
    }
    catch(err){
        console.log("An error occured while getting package ID!");
        console.log(err);
        res.send({ success: false });
    }
});

app.post('/SignMessage', jsonParser, async function (req, res) {
    try{
        console.log("Preparing a signature for received random message!");
        console.log(req.body.message);

        let signature = await arduino.request([
            arduino.commands.SIGN,
            req.body.message,
            publicKey,
            privateKey
        ]);

        res.send(JSON.stringify({ success: true, signature: signature }));
    }
    catch(err){
        console.log("An error occured while signing message!");
        console.log(err);
        res.send({ success: false });
    }
});

app.listen(3001, () => {
    console.log("Driver Server running on port 3001");
});