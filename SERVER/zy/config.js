const mongoClient = require("mongodb").MongoClient;
var url = "mongodb://localhost:27017/";
var useNewUrlParser = true;
var objectId = require('mongodb').ObjectId;
var config = {
   mongoClient,url,useNewUrlParser,objectId
}


module.exports = config;