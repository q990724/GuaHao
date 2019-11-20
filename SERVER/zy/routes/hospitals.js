const express=require("express");
var router=express.Router();
var config = require("../config");

//获取医院所有简介信息
router.get("/hospitalsAll",function(req,res){
    config.mongoClient.connect(config.url,{ useNewUrlParser: true, useUnifiedTopology: true },function(err,db){
        if(err) throw err;
        var dbo = db.db("app_zhuanyi");
        dbo.collection("hospitals").find({})
        .project({_id : 1 , hname : 1 , hrank : 1 , hmajor : 1 , comment_msg : 1 , hpic : 1})
        .toArray(function(err,result){
            if(err) throw err;
            if(result.length > 0){
                res.send({code : 1 , msg : "查询成功",data : result});
            }else{
                res.send({code : -1 , msg : "查询失败"});
            }
        });
    });
})

//获取指定医院详细信息
router.get("/hospitalsDetails/:hid",function(req,res){
    var hid = req.params.hid;
    if(!hid){
        res.send({code : -2,msg : "参数hid为空或获取失败"});
        return;
    }
    config.mongoClient.connect(config.url,{ useNewUrlParser: true, useUnifiedTopology: true },function(err,db){
        if(err) throw err;
        var dbo = db.db("app_zhuanyi");
        dbo.collection("hospitals").findOne({'_id' : config.objectId(hid)},function(err,result){
           if(err) throw err;
           if(result){
              res.send({code : 1 , msg : "查询成功" , data : result});
           }else{
              res.send({code : -1 , msg : "查询失败"}); 
           }
        });
    });
})

module.exports=router;