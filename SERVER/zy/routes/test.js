const express=require("express");
var router=express.Router();
var pool=require("../pool");

router.get("/dorder",function(req,res){
   var did = req.query.did;
   pool.query("select * from doctor where did=?",[did],function(err,result){
      if(err) throw err;
      res.send(result);
   });
});

router.get("/insertOrder",function(req,res){
   var did = req.query.did;
   var order_number = req.query.order;
   var wait_number = req.query.wait;
   var uid = req.session.uid;
   if(!uid){
      res.send({code : -1,msg : "请登录"});
      return;
   }
   console.log(did,uid,order_number,wait_number);
   var sql = `INSERT INTO uorder VALUES (NULL, '${uid}', '${did}', '${order_number}')`;
   console.log(sql);
   pool.query(sql,function(err,result){
      if(err) throw err;
      if(result.affectedRows > 0){
         res.send({code :1});
      }else{
         res.send({code :0});
      }
   });
});

router.get("/showOrder",function(req,res){
   var uid = req.session.uid;
   pool.query("select * from user_order where uid=?",[uid],function(err,result ){
      if(err) throw err;
      res.send(result);
   });
});


/*
router.get("/login",function(req,res){
   var uname = req.query.uname;
   var upwd = req.query.upwd;
   pool.query("select * from user where uname=? and upwd=?",[uname,upwd],function(err,result){
      if(err) throw err;
      if(result.length > 0){
         req.session.uid = result[0].uid;
         console.log(req.session.uid);
         res.send({code : 1});
      }else{
         res.send({code : 0});
      }
   });
});
*/



module.exports=router;