<template>
  <div class = "healthy-item">
    <img src="../../../../public/images/me/me-Community/empty-new.png" alt="">
    <p>请添加联系人，进行健康档案管理</p>
    <van-button round type="info" class = "healthy-item-btn">
      <router-link to = "" class = "healthy-item-text">添加家庭联系人</router-link>
    </van-button>
  </div>
</template>

<script>
  export default {
  
  }
</script>

<style scoped>
  .healthy-item{
    width: 100%;
    height: 100%;
    border-top: .0625rem solid  #eee;
  }
  .healthy-item img{
    width: 3.933125rem;
    height: 3.933125rem;
    margin: .65625rem auto;
    display: block;
  }
  .healthy-item p{
    color: #999;
    font-size: .82rem;
    margin-bottom: .625rem;
  }
  .healthy-item-btn{
    width: 35%;
    background: #fff;
    line-height: .9rem;
    padding: .5175rem 1.035rem;
  }
  .healthy-item-text{
     color: #3f86ff;
  }
</style>
