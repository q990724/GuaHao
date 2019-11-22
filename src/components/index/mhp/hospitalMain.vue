<template>
  <div class="hospital-main">
    <!-- 1.标题 -->    
    <div class="htitle">
      <van-icon class="goback" @click="goback" name="arrow-left" />  
      <mt-header class="title" title="医院主页"> 
      </mt-header>
    </div>
    <!-- 2.轮播图 -->
    <van-swipe :autoplay="3000">
      <van-swipe-item v-for="(image, index) in images" :key="index">
        <img v-lazy="image" />
      </van-swipe-item>
    </van-swipe>
    <!-- 3.简介 -->
    <!-- 4.主体 -->
    <!-- 5.底部 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      images: [
        'https://img.yzcdn.cn/vant/apple-1.jpg',
        'https://img.yzcdn.cn/vant/apple-2.jpg'
      ]
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
</style>
