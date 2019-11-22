const express = require("express");
var router = express.Router();
var pool = require("../pool");

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
    //创建sql1 查询当前页内容
    var sql1 = "SELECT * FROM healthy_number LIMIT ?,?";
    //发送sql1语句
    pool.query(sql1, [offset, ps],
        (err, result) => {
            //查询成功回调函数 sql1
            if (err) throw err;
            //查询结果
            var data = result;
            //在执行成功回调函数中创建第二条 
            var sql2 = "SELECT count(hn_id) as c FROM healthy_number";
            //查询记录总数
            pool.query(sql2, (err, result) => {
                if (err) throw err;
                var pageCount = Math.ceil(result[0].c / ps);
                res.send(
                    {
                        code: 1,   //查询编码
                        msg: "查询成功",//原因
                        rows: data, //当前页内容
                        pageCount: pageCount//总页
                    })
            })
        })
});

module.exports = router;