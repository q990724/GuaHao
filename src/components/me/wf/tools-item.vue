<template>
  <div>
    <div class = "tools-item">
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-patients.png" alt="">
        <span>家庭联系人</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-star.png" alt="">
        <span>关注收藏</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-doctor.png" alt="">
        <span>我的医生</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-member.png" alt="">
        <span>会员福利</span>
      </router-link>
    </div>
    <div class = "tools-item">
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-course.png" alt="">
        <span>我的课程</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/BJh154243448.png" alt="">
        <span>会员好友</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-help.png" alt="">
        <span>帮助反馈</span>
      </router-link>
      <router-link to = "" class = "tools-item-img">
        <img src="../../../../public/images/me/me-tools/icon-more.png" alt="">
        <span>更多</span>
      </router-link>
    </div>
  </div>
</template>

<script>
  export default {
    
  }
</script>

<style scoped>
  .tools-item{
    display: flex;
    justify-content: space-around; 
    border-top: .0625rem solid  #eee;
  }
  .tools-item-img{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    color: #83889a;
    padding: 1.035rem 0 .8125rem;
    font-size: .8125rem;
    width: 17%;
  }
  .tools-item-img img{
    width: 1.5rem;
    height: 1.5rem;
    display: block;
    margin-bottom:.5rem; 
  }
</style>
