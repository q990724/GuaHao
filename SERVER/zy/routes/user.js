const express=require("express");
var router=express.Router();
var pool=require("../pool");

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
   console.log(phone,upwd);

   pool.query("select * from user where phone=? and upwd=?",[phone,upwd],function(err,result){
      if(err) throw err;
      if(result.length > 0){
         req.session.uid = result[0].uid;
         res.send({code : 1 , msg : "登录成功"});
      }else{
         res.send({code : -1 , msg : "登录账号或密码错误"});
      }
   });

});

module.exports=router;