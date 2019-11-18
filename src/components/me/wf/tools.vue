<template>
  <div class = "whole">
    <div class = "tools">
      <h2>常用工具</h2>
      <div class = "tools-list">
        <tools-item v-for="(item,i) of list.slice(0,4)" :key="i" :item="item" class = "tools-list-item"></tools-item>
      </div>
      <div class = "tools-list">
        <tools-item v-for="(item,i) of list.slice(4)" :key="i" :item="item" class = "tools-list-item"></tools-item>
      </div>
    </div>
    <div class = "community">
      <h2>我的社区</h2>
      <community></community>
    </div>
    <div class = "healthy">
      <h2>健康档案</h2>
      <healthy></healthy>
    </div>
  </div>
</template>

<script>
  import toolsItem from "./tools-item.vue"
  import community from "./community.vue"
  import healthy from "./healthy.vue"
  export default {
    data(){
      return {
        list:[
          {text:"家庭联系人",path:"me/me-tools/icon-patients.png"},
          {text:"关注收藏",path:"me/me-tools/icon-star.png"},
          {text:"我的医生",path:"me/me-tools/icon-doctor.png"},
          {text:"会员福利",path:"me/me-tools/icon-member.png"},
          {text:"我的课程",path:"me/me-tools/icon-course.png"},
          {text:"会员好友",path:"me/me-tools/BJh154243448.png"},
          {text:"帮助反馈",path:"me/me-tools/icon-help.png"},
          {text:"更多",path:"me/me-tools/icon-more.png"},
        ]
      }
    },
    components:{
      "toolsItem" : toolsItem,
      "community" : community,
      "healthy" : healthy
    }
  }
</script>

<style scoped>
  .whole{
    background: #f8f8f8;
    text-align: center;
  }
  .tools-list{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around; 
  }
  .tools-list-item{
    width: 25%;
  }
  .tools,.community{
    background: #fff;
    border-bottom: .625rem;
    margin-bottom: .6875rem;
  }
  .tools h2,.community h2,.healthy h2{
    font-size: 1rem;
    line-height: 2.75rem;
    color: #83889a;
    font-weight: 500;
  }
  .healthy{
    height: 15.18rem;
    background: #fff;
  }
</style>

