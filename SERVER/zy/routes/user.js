const express=require("express");
var router=express.Router();
var pool=require("../pool");

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
   console.log(phone,upwd);

   pool.query("select * from user where phone=? and upwd=?",[phone,upwd],function(err,result){
      if(err) throw err;
      if(result.length > 0){
         req.session.uid = result[0].uid;
         console.log("session uid:" + req.session.uid);
         res.send({code : 1 , msg : "登录成功" , data : result});
      }else{
         res.send({code : -1 , msg : "登录账号或密码错误"});
      }
   });

});

//查询用户预约信息
router.get("/showUserOrder",function(req,res){
   var uid = req.session.uid;
   if(!uid){
      res.send({code : -2, msg :'未登录,请重新登录'});
      return;
   }

   var sql = "select * from user_orders where uid = ?";
   pool.query(sql,[uid],function(err,result){
      if(err) throw err;
      if(result.length > 0){
         res.send({code : 1 , msg : "查询成功" , data : result[0]});
      }else{
         res.send({code : -1 , msg : "还没有预约过任何医生!"});
      }
   });
});
//插入用户预约信息并插入医生预约表
router.get("/insertUserOrder",function(req,res){
   var uid = req.session.uid;
   console.log(uid);
   var did = req.query.did;
   var hname = req.query.hname;
   var class_name = req.query.class_name;
   var class_subname = req.query.class_subname;
   var order_number = req.query.order_number;
   var order_time = req.query.order_time;

   if(!uid){
      res.send({code : -2, msg :'未登录,请重新登录'});
      return;
   }

   var sql = "insert into user_orders values(null,?,?,?,?,?,?,?)";
   pool.query(sql,[uid,did,hname,class_name,class_subname,order_number,order_time],function(err,result){
      if(err) throw err;
      if(result.affectedRows >= 0){
         //res.send({code : 1 , msg : "插入成功"});
        pool.query(`insert into doctor_orders values(null,${uid},${did},${order_number})`,function(err,result){
          if(err) throw err;
          if(result.affectedRows > 0){
            res.send({code : 1 , msg : "插入成功"});
          }else{
            res.send({code : -1 , msg : "插入失败"});   
          }
        })
      }else{
         res.send({code : -1 , msg : "插入失败"});
      }
   });
});

//删除对应用户预约信息和医生预约信息
router.get("/deleteUserOrder/:did", function (req, res) {
  var uid = req.session.uid;
  var did = req.params.did;
  if (!uid) {
    res.send({ code: -2, msg: '未登录,请重新登录' });
    return;
  }

  var sql = "delete from user_orders where uid=? and did=?";
  pool.query(sql,[uid,did],function(err,result){
    if(err) throw err;
    if(result.affectedRows > 0){
      pool.query(`delete from doctor_orders where uid=${uid} and did=${did}`,function(err,result){
        if(err) throw err;
        if(result.affectedRows > 0){
          res.send({code : 1 , msg : "取消预约成功！"});
        }else{
          res.send({code : -1 , msg : "取消预约失败，请重试！"});
        }
      });
    }else{
      res.send({code : -1 , msg : "取消预约失败，请重试!"});
    }
  });
});

//判断用户是否已经登录
router.get("/islogin",function(req,res){
   if(!req.session.uid){
     res.send({code : -1 , msg : "请重新登录!"});
   }else{
     res.send({code : 1 , msg : "已登录"});
   }
 });

module.exports=router;