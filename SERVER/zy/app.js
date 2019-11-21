//使用express构建web服务器 --11:25
const express = require('express');
var app = express();
var http = require('http').Server(app);
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");
const io = require("socket.io")(http);
const mongoClient = require("mongodb").MongoClient;
var expressMongoDb = require('express-mongo-db');
/*引入路由模块*/
var user = require("./routes/user");
var hotRommend = require("./routes/hotRommend");
var hospitals = require("./routes/hospitals");
var healthyNumber = require("./routes/healthyNumber");
var doctor = require("./routes/doctor");
app.use(cors({
  origin:['http://localhost:8080',"http://127.0.0.1:5500","http://127.0.0.1:8081","http://127.0.0.1:8080"],
  credentials:true
}))
http.listen(5050);



//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(session({
  secret:'随机字符串',
  cookie:{maxAge:60*1000*30},//过期时间ms
  resave:false,
  saveUninitialized:true
}));//将服务器的session，放在req.session中


app.use(expressMongoDb('mongodb://127.0.0.1/app_zhuanyi'));

/*使用路由器来管理路由*/
app.use("/user",user);
app.use("/hotRommend",hotRommend);
app.use("/hospitals",hospitals);
app.use("/healthyNumber",healthyNumber);
app.use("/doctor",doctor);

