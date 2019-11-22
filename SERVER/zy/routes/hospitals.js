const express=require("express");
var router=express.Router();
var pool=require("../pool");

//获取医院所有简介信息
router.get("/hospitalsAll",function(req,res){
    var sql = "select hid,hname,hrank,hmajor,comment_msg,hpic from hospitals";
    pool.query(sql,function(err,result){
        if(err) throw err;
        if(result.length > 0){
            res.send({code : 1, msg : "查询成功",result : result});
        }else{
            res.send({code : -1, msg : "查询出错或没有数据"});
        }
    });
})

//获取指定医院详细信息
router.get("/hospitalsDetails/:hid",function(req,res){
    var hid = req.params.hid;
    if(!hid){
        res.send({code : -2,msg : "参数hid为空或获取失败"});
        return;
    }
    var sql = "select * from hospitals where hid=?";
    pool.query(sql,[hid],function(err,result){
        if(err) throw err;
        if(result.length > 0){
            res.send({code : 1, msg : "查询成功",result : result});
        }else{
            res.send({code : -1, msg : "查询出错或没有数据"});
        }
    });
})

module.exports=router;