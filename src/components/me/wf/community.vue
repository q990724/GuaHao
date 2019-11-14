<template>
  <div class = "community-item">
    <router-link to = "" class = "community-item-img">
      <img src="../../../../public/images/me/me-Community/icon-sns-watch.png" alt="">
      <span>我的关注</span>
    </router-link>
    <router-link to = "" class = "community-item-img">
      <img src="../../../../public/images/me/me-Community/icon-sns-question.png" alt="">
      <span>我的提问</span>
    </router-link>
    <router-link to = "" class = "community-item-img">
      <img src="../../../../public/images/me/me-Community/icon-sns-post.png" alt="">
      <span>我的发帖</span>
    </router-link>
    <router-link to = "" class = "community-item-img">
      <img src="../../../../public/images/me/me-Community/icon-sns-more.png" alt="">
      <span>更多</span>
    </router-link>
  </div>
</template>

<script>
  export default {
    
  }
</script>

<style scoped>
  .community-item{
    display: flex;
    justify-content: space-around; 
    border-top: .0625rem solid  #eee;
  }
  .community-item-img{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    color: #83889a;
    padding: 1.035rem 0 .8125rem;
    font-size: .8125rem;
    width: 17%;
  }
  .community-item-img img{
    width: 1.5rem;
    height: 1.5rem;
    display: block;
    margin-bottom:.5rem; 
  }
</style>
