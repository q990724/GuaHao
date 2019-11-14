<template>
  <div class="quik">
    <div class="top">
      <span>极速问诊</span>
      <img src="../../../../public/images/index/22toGuahao/PeY130253620.webp" alt="">
    </div>
    <div class="bottom">
      <span>
        三甲专家/
        <span>3分钟</span>
        接诊
      </span>
    </div>
  </div>
</template>
<script>
  export default {
    
  }
</script>
<style scoped>
.quik{
  width: 40%;
  height:100px;
  /* margin:0px 5px 5px 15px; */
  box-shadow:-0.08533333rem 0.17066667rem 0.68266667rem -0.04266667rem rgba(20,19,51,.1) ;
  background: url("../../../../public/images/index/22toGuahao/icon-fast-inquiry-background.png");
  background-size: 60px 60px;
  background-repeat: no-repeat;
  background-position-x: right;
  background-position-y: bottom;
  /* position: relative; */
  /* top:40px; */
}
.top{
  padding:15px 5px 10px 15px;
  text-align: left;
}
.top>span{
  color:#28354c;
  font-size: 22px;
  font-style: "微软雅黑";
  font-weight: 700;
  
}
.top>img{
  width:36px;
  height:14px;
  margin-left:10px;
  margin-top:10px;
}
/* .bottom{

} */
.bottom span{
  font-size: 14px;
  line-height: 14px;
  color:#5e616b;
}
.bottom>span>span{
  font-weight: bold;
  color:#fd854f;
}
</style>