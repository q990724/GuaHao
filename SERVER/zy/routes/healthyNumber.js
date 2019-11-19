const express = require("express");
var router = express.Router();
var config = require("../config");

//健康号页面的分页查询数据
router.get("/healthyNumber", function (req, res) {
    //获取数据 pno pageSize
    var pno = req.query.pno;
    var ps = req.query.pageSize;
        
    //设置数据默认值
    if (!pno || !Number(pno)) { pno = 1 }
    if (!ps) { ps = 5 }
    //创建变量offset计算数据库第一参数
    var offset = (pno - 1) * ps;
    //给pageSize造型整型
    ps = parseInt(ps);
    config.mongoClient.connect(config.url,{useNewUrlParser : config.useNewUrlParser},function(err,db){
        if(err) throw err;
        var dbo = db.db("app_zhuanyi");
        /*
            var query = dbo.collection("healthy_number").find({});
            query.skip(offset);
            query.limit(ps);
            query.exec(function(err,result){
                res.send({data : result,count : rs.length});
            })
        */
        dbo.collection("healthy_number").find().skip(offset).limit(ps).toArray(function(err,result){
            if(err){
                throw err;
            }else{
                var totalCount = -1;
                dbo.collection("healthy_number").find().toArray(function(e,rs){
                    if(e){
                        throw e;
                    }else{
                        totalCount = rs.length;
                        res.send({code : 1 , msg : "查询成功" , totalCount , data : result});
                    }
                });
            }
            
        });
        
    });
});

module.exports = router;