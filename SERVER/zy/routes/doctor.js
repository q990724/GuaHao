const express=require("express");
var router=express.Router();
var pool=require("../pool");

//插入到医生预约表中
router.post("/insertDoctorOrder",function(req,res){
    var uid = req.session.uid;
    var did = req.body.did;
    var order_number = req.body.order_number;
 
    if(!uid){
       res.send({code : -2, msg :'未登录,请重新登录'});
       return;
    }
 
    var sql = "insert into doctor_orders values(null,?,?,?)";
    pool.query(sql,[uid,did,order_number],function(err,result){
       if(err) throw err;
       if(result.affectedRows >= 0){
          res.send({code : 1 , msg : "插入成功"});
       }else{
          res.send({code : -1 , msg : "插入失败"});
       }
    });
 });
 
 //查询对应医生的所有预约信息
 router.get("/showDoctorOrder/:did",function(req,res){
    var did = req.params.did;
    var sql = "select * from doctor_orders where did=?";
    pool.query(sql,[did],function(err,result){
        if(err) throw err;
        if(result.length > 0){
            res.send({code : 1 , msg : "查询成功" , data : result});
        }else{
            res.send({code : -1 , msg : "查询结果为空"});
        }
    });
 });

 //删除对应医生的对应用户预约信息
 router.post("/removeDoctorOrder",function(req,res){
    var uid = req.session.uid;
    var did = req.body.did;
 
    if(!uid){
       res.send({code : -2, msg :'未登录,请重新登录'});
       return;
    }
 
    var sql = "delete from doctor_orders where did=? and uid=?";
    pool.query(sql,[did,uid],function(err,result){
       if(err) throw err;
       if(result.affectedRows >= 0){
          res.send({code : 1 , msg : "删除成功"});
       }else{
          res.send({code : -1 , msg : "删除失败"});
       }
    });
 });

  //查询所有医生
  router.get("/showDoctorsAll",function(req,res){
   var sql = "select * from doctors";
   pool.query(sql,function(err,result){
       if(err) throw err;
       if(result.length > 0){
           res.send({code : 1 , msg : "查询成功" , data : result});
       }else{
           res.send({code : -1 , msg : "查询结果为空"});
       }
   });
});

//查询某个医生的详细信息
router.get("/showDoctor/:did",function(req,res){
   var did = req.params.did;
   var sql = "select * from doctors where did=?";
   pool.query(sql,[did],function(err,result){
       if(err) throw err;
       if(result.length > 0){
           res.send({code : 1 , msg : "查询成功" , data : result});
       }else{
           res.send({code : -1 , msg : "查询结果为空"});
       }
   });
});
module.exports=router;