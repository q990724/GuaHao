<template>
    <div class = "tools-item">
      <router-link to = "" class = "tools-item-img">
        <img :src="`http://zhuanyi.applinzi.com/images/${item.path}`" alt="">
        <p>{{item.text}}</p>
      </router-link>
    </div>
</template>

<script>
  export default {
    props:["item"]
  }
</script>

<style scoped>
  .tools-item{
    border-top: .0625rem solid  #eee;
  }
  .tools-item-img{
    display: block;
    align-items: center;
    color: #83889a;
    padding: 1.035rem 0 .8125rem;
    font-size: .8125rem;
  }
  .tools-item-img img{
    margin: auto;
    width: 1.9375rem;
    height: 1.9375rem;
    display: block;
    margin-bottom:.5rem; 
  }
</style>
