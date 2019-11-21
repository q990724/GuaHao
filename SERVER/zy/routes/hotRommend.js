const express = require("express");
var router = express.Router();
var objectId = require('mongodb').ObjectId;
//查询健康号精选信息
router.get("/healthyAll", function (req, res) {
   req.db.collection("healthy_choice").find({})
      .project({ _id: 1, heal_title: 1, heal_subtitle: 1, heal_pic: 1 })
      .toArray(function (err, result) {
         if (err) throw err;
         if (result.length > 0) {
            res.send({ code: 1, msg: "查询成功", data: result });
         } else {
            res.send({ code: -1, msg: "查询失败" });
         }

      });
});
//查询指定健康号精选详细信息
router.get("/healthyDetails/:healthy_id", function (req, res) {
   var healthy_id = req.params.healthy_id;
   if (!healthy_id) {
      res.send({ code: -2, msg: "参数获取失败" });
      return;
   }
   req.db.collection("healthy_choice").findOne({ '_id': objectId(healthy_id) }, function (err, result) {
         if (err) throw err;
         if (result) {
            res.send({ code: 1, msg: "查询成功", data: result });
         } else {
            res.send({ code: -1, msg: "查询失败" });
         }
      });
});

module.exports = router;