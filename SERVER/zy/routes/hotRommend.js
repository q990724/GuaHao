const express=require("express");
var router=express.Router();
var pool=require("../pool");

//查询健康号摘要信息
router.get("/healthyAll",function(req,res){
   var sql = "select healthy_id,heal_title,heal_subtitle,heal_pic from healthy_choice";
   pool.query(sql,function(err,result){
      if(err) throw err;
      if(result.length > 0){
         res.send({code : 1 , result :result});   
      }else{
         res.send({code : -1,msg : "查询出错"});
      }
   });
});
//查询指定健康号详细信息
router.get("/healthyDetails/:healthy_id",function(req,res){
   var healthy_id = req.params.healthy_id;
   if(!healthy_id){
      res.send({code : -2 , msg : "参数获取失败"});
      return;
   }
   var sql = `select healthy_id,heal_title,heal_subtitle,heal_pic,heal_authorName,isOriginal,publish_time,readed_count,lead_msg,type_tags from healthy_choice where healthy_id=?`;
   pool.query(sql,[healthy_id],function(err,result){
      if(err) throw err;
      if(result.length > 0){
         res.send({code : 1 , result :result});   
      }else{
         res.send({code : -1,msg : "查询出错"});
      }
   });
});

module.exports=router;