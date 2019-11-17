//使用express构建web服务器 --11:25
const express = require('express');
var app = express();
var http = require('http').Server(app);
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");
const pool = require("./pool.js");
const io = require("socket.io")(http);
/*引入路由模块*/
var user = require("./routes/user");
var test = require("./routes/test");
var hotRommend = require("./routes/hotRommend");
var hospitals = require("./routes/hospitals");
var healthyNumber = require("./routes/healthyNumber");

var dorderOrderNumbers;

app.use(cors({
  origin:['http://localhost:8080',"http://127.0.0.1:5500","http://localhost:8081","http://127.0.0.1:8080"],
  credentials:true
}))
http.listen(5050);

//启动socket.io监听客户端连接
io.on("connection",client=>{
  //监听客户端添加预约
  client.on("activeAdd",did=>{
    //服务器发送对应医生给客户端
    var doctorOrder;
    for(var item of dorderOrderNumbers){
      if(item.did == did){
        doctorOrder = item;
        break;
      }
    }
    client.emit("ordersOfDoctor",doctorOrder);
    client.on("updateToServer",data=>{
      doctorOrder.order_numbers = data.list;
      console.log("已更改" + data.did + "的列表信息,当前备份内容为:");
      console.log(dorderOrderNumbers);
    });
  });

  client.on("enterMyOrder",didsAndOrders=>{
    //console.log(didsAndOrders);
    //didsAndOrders 存放的格式为: [{did : x , order : x}]
    //遍历数组,拿到所有对应did的医生信息,触发事件(allDocterOrders),统一返回给客户端
    var list = [];
    var dids = [];
    for(var item of didsAndOrders){ // 拿到每一项did
      dids.push(item.did);
    }
    console.log("拿到客户端发来的所有医生did:" + dids);
    //查询副本,将对应的医生列表,放入list中
    for(var i = 0; i < dorderOrderNumbers.length; i++){
      for(var j = 0; j < dids.length; j++){
        if(dorderOrderNumbers[i].did == dids[j]){
          list.push({did : dids[j] , orders : dorderOrderNumbers[i].order_numbers});
        }
      }
    }
    //将list返回给客户端
    client.emit("allDoctorOrders",list);
  });

  client.on("activeRemove",data=>{
    for(var item of dorderOrderNumbers){
      if(item.did == data.did){
        var arr = item.order_numbers.split(",");
        var index = arr.indexOf(data.order); 
        arr.splice(index,1);
        item.order_numbers = arr.join(",");
        pool.query("delete user_order where uid=? and did=?");
        console.log(`移除预约成功,当前所有备份数据为:`);
        console.log(dorderOrderNumbers);
        io.emit("updateToClient",item);
      }
    }
  });
});

//主动查询数据库,存储所有医生的列表信息
pool.query("select did,order_numbers from doctors",function(err,result){
  if(err) throw err;
  dorderOrderNumbers = result;
  console.log("服务器端创建副本完成");
  console.log(dorderOrderNumbers);
  console.log("-----------------end---------------");
});

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
/*使用路由器来管理路由*/

app.use("/test",test);
app.use("/user",user);
app.use("/hotRecommend",hotRommend);
app.use("/hospitals",hospitals);
app.use("/healthyNumber",healthyNumber);