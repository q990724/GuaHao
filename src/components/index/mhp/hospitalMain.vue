<template>
  <div class="hospital-main">
    <!-- 1.标题 -->    
    <div class="htitle">
      <van-icon class="goback" @click="goback" name="arrow-left" />  
      <mt-header class="title" title="医院主页"> 
      </mt-header>
    </div>
    <!-- 2.轮播图 -->
    
    <van-swipe :autoplay="3000" indicator-color="white" class="lunbo">
      <van-swipe-item>
        <img src="../../../../public/images/index/22hospitalMain/banner1.png" alt="">
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../../public/images/index/22hospitalMain/banner2.png" alt="">
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../../public/images/index/22hospitalMain/banner3.jpg" alt="">
      </van-swipe-item>
    </van-swipe>
    <!-- 3.简介 -->
    <div class="intr">
      <div class="hname-intr">
        <div></div>
        <p class="hname">中国人民解放军总医院(301医院)</p>
        <span class="hlevel">三甲</span>
        <h4 class="time">放号时间：
          <span>18:30</span>
          预约量：
          <span>223.4万</span>
        </h4>
      </div>
      <div class="todetail">
        <span>查看详情</span>
        <van-icon name="arrow" />
      </div>
    </div>
    <!-- 4.主体 -->
    <div class="pro-main">
      <div class="left">
        <img src="../../../../public/images/index/22hospitalMain/text.png" alt="">
        <p>根据疾病找专科与专家</p>
        <img src="../../../../public/images/index/22hospitalMain/doc-icon.png" alt="">
        <p>预约周期：</p>
        <span>28天</span>
      </div>
      <div class="right">
        <div class="first">
          <img src="../../../../public/images/index/22hospitalMain/icon-doc.png" alt="">
          <div class="pre">
            <p>预约挂号</p>
            <h5>提前预约先人一步</h5>
          </div>
        </div>
        <div class="second">
          <img src="../../../../public/images/index/22hospitalMain/icon-feature.png" alt="">
          <div class="pre">
            <p>预约挂号</p>
            <h5>提前预约先人一步</h5>
          </div>
        </div>
        <div class="third">
          <img src="../../../../public/images/index/22hospitalMain/icon-registration.png" alt="">
          <div class="pre">
            <p>预约挂号</p>
            <h5>提前预约先人一步</h5>
          </div>
        </div>
      </div>
    </div>
    <!-- 5.底部 -->
    <div class="bottom">
      <img src="../../../../public/images/index/22hospitalMain/search.png" alt="">
      <div class="ser">
        <p>挂号查询与退号</p>
        <h5>查询已挂就诊信息，可退当日开诊前的号源</h5>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
    }
  },
  methods:{
    goback(){
      this.$router.go(-1);
    }
  }
}
</script>
<style scoped>
.htitle{
  display: flex;
  justify-content: space-evenly;
  background: #fff;
}
.title{
  background: #fff;
  color:#000;
  height:2.469466rem;
  font-size: 1.099237rem;
  width:80%;
}
.goback{
  z-index: 999;
  font-size: 1.465649rem;
  top:.410687rem;
}
.lunbo{
  height:8.061069rem;
}
.lunbo img{
  width:100%;
  height:8.061069rem;
}
.intr{
  height:3.074809rem;
  background: #fff;
  margin-bottom: .610687rem;
  padding:.916031rem .610687rem;
  display: flex;
  justify-content: space-between;
}
.hname-intr{
  width:75%;
}
.hname{
  font-size: .854962rem;
  color:#28354c;
  width:80%;
}
.time{
  font-size: .793893rem;
  color:#83889a;
  font-weight: normal;
}
.hlevel{
  display: inline-block;
  width:1.93rem;
  height:.916031rem;
  line-height: .916031rem;
  text-align: center;
  color:#ff695c;
  border:.061069rem solid #ff695c;
  border-radius: .616031rem;
  font-size: .632824rem;
}
.todetail{
  font-size: .793893rem;
  color:#83889a;
}
.pro-main{
  height:14.045802rem;
  background: #fff;
  display: flex;
  justify-content: space-between;
  padding:0 1.221374rem;
}
.left{
  width:50%;
  border-right: .061069rem solid #ccc;
  padding:2.042748rem 1.242748rem;
}
.right{
  width:50%;
}
</style>
