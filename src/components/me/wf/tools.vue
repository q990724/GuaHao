<template>
  <div class = "whole">
    <div class = "tools">
      <h2>常用工具</h2>
      <tools-item></tools-item>
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

