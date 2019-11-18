<template>
  <div class="toGuahao" @click="togh">
    <div class="top">
      <span>去挂号</span>
      <!-- <img src="../assets/toGuahao/PeY130253620.webp" alt=""> -->
    </div>
    <div class="bottom">
      <span>
        全国
        <span>2894家</span>
        重点医院
      </span>
    </div>
  </div>
</template>
<script>
  export default {
    data(){
      return {

      }
    },
    methods: {
      // 判断是否有用户账号登录？
      togh(){
        this.$router.push("/preGuahao");
      }
    },
  }
</script>
<style scoped>
.toGuahao{
  width: 40%;
  height:6.25rem;
  /* margin:0px 5px 5px 10px; */
  box-shadow:-0.08533333rem 0.17066667rem 0.68266667rem -0.04266667rem rgba(20,19,51,.1) ;
  background: url("../../../../public/images/index/22toGuahao/icon-fast-inquiry-background.png") #fff;
  background-size: 3.75rem 3.75rem;
  background-repeat: no-repeat;
  background-position-x: right;
  background-position-y: bottom;
  padding-left:.9375rem;
  
  /* position: relative; */
  /* top:40px; */
}
.top{
  padding:.916031rem 0 .610687rem 0;
  text-align: left;
}
.top>span{
  color:#28354c;
  font-size: 1.375rem;
  font-style: "微软雅黑";
  font-weight: 700;
  
}
.top>img{
  width:2.25rem;
  height:.875rem;
  margin-left:.625rem;
  margin-top:.625rem;
}
/* .bottom{

} */
.bottom span{
  font-size: .875rem;
  line-height: .875rem;
  color:#5e616b;
}
.bottom>span>span{
  font-weight: bold;
  color:#3f86ff;
}
</style>