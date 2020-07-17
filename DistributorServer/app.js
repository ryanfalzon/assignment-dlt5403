const express = require("express");
const cors = require('cors');
const bodyParser = require('body-parser');
const orders = require('./orders')
const app = express();

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

app.post('/PlaceOrder', jsonParser, function (req, res) {
    console.log(`Order received: ${req.body}`);
    orders.process(req.body).then(function(processedOrder){
        let jsonOrder = JSON.stringify(processedOrder);
        console.log(`Processed order: ${jsonOrder}`)
        res.send(jsonOrder);
    });
});

app.listen(3000, () => {
    console.log("Distributor Server running on port 3000");
});