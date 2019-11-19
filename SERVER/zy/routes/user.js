const express=require("express");
var router=express.Router();
var config = require("../config");

//登录接口
router.get("/login/:phone&:upwd",function(req,res){
   var phone = req.params.phone;
   var upwd = req.params.upwd;
   if(!phone){
      res.send({code : -2 ,msg : "手机号参数获取错误"});
      return;
   }else if(!upwd){
      res.send({code : -3 ,msg : "密码参数获取错误"});
      return;
   }
   //console.log(phone,upwd);

   var obj = {
      phone,upwd
   }

   config.mongoClient.connect(config.url,{useNewUrlParser : config.useNewUrlParser},function(err,db){
      if(err) throw err;
      var dbo = db.db("app_zhuanyi");
      dbo.collection("user").findOne(obj,function(err,result){
         if(err) throw err;
         if(result){
            req.session.uid = result._id;
            console.log("用户登录成功,session为:" + req.session.uid);
            res.send({code : 1 , msg : '登录成功'});
         }else{
            res.send({code : -1 , msg : '用户名或密码错误'});
         }
      });
   });
   
});

//查询用户预约信息
router.get("/showUserOrder",function(req,res){
   var uid = req.session.uid;
   if(!uid){
      res.send({code : -2, msg :'未登录,请重新登录'});
      return;
   }

   config.mongoClient.connect(config.url,{useNewUrlParser : config.useNewUrlParser},function(err,db){
      if(err) throw err;
      var dbo = db.db("app_zhuanyi");
      dbo.collection("user_orders").find({uid : uid}).toArray(function(err,result){
         if(err) throw err;
         if(result.length > 0){
            res.send({code : 1 , msg : '查询成功',data : result})
         }else if(result.length == 0){
            res.send({code : 0 , msg : '暂时没有预约过医生'})
         }else{
            res.send({code : -1 , msg : "查询失败"});
         }
      });
   });
});
//插入用户预约信息并插入医生的预约信息
router.post("/insertUserOrder",function(req,res){
   //var uid = req.session.uid;
   var obj = {
      uid : req.session.uid,
      did : req.body.did,
      hname : req.body.hname,
      class_name : req.body.class_name,
      class_subname : req.body.class_subname,
      order_number : req.body.order_number,
      order_time : req.body.order_time
   }
   

   if(!obj.uid){
      res.send({code : -2, msg :'未登录,请重新登录'});
      return;
   }

   config.mongoClient.connect(config.url,{useNewUrlParser : config.useNewUrlParser},function(err,db){
      if(err) throw err;
      var dbo = db.db("app_zhuanyi");
      dbo.collection("user_orders").insertOne(obj,function(err,result){
         if(err) throw err;
         var docObj = {
            uid : obj.uid,
            did : obj.did,
            order_number : obj.order_number
         }
         dbo.collection("doctor_orders").insertOne(docObj,function(err,result){
            if(err) throw err;
            res.send({code : 1 , msg : "预约成功!"});
         })
      });
   });
});


//删除用户预约信息和对应的医生预约信息
router.get("/deleteUserOrder",function(req,res){
   var uid = req.session.uid;
   var did = req.query.did;
   if(!uid){
      res.send({code : -2, msg :'未登录,请重新登录'});
      return;
   }

   config.mongoClient.connect(config.url,{useNewUrlParser : config.useNewUrlParser},function(err,db){
      if(err) throw err;
      var dbo = db.db("app_zhuanyi");
      dbo.collection("user_orders").deleteOne({uid : uid , did : did},function(err,result){
         if(err) res.send({code : -1 , msg : "删除失败" , err : err});
         //res.send({code : 1 , msg : "删除成功"});
         dbo.collection("doctor_orders").deleteOne({uid : uid , did : did},function(err,result){
            if(err) res.send({code : -1 , msg : "删除失败" , err : err});
            res.send({code : 1 , msg : "删除成功"});
         });
      });
   });
});


module.exports=router;