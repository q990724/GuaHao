<template>
<!-- 每个医院页面都有的小组件 -->
  <div id="choose">
    <h5>不知道选哪个科室?</h5>
    <router-link class="ask" to="#">点我立即咨询<span>&gt;</span></router-link>
  </div>
</template>

<script>
export default {

}
</script>

<style>
  #choose{
    display:flex;
    justify-content: space-between;
    padding:15px 15px 10px 15px;
    margin:10px 0;
  }
  h5{
    display:inline;
    margin:0;
  }
  #choose .ask{
    font-size:14px;
    color:#3f86ff;
    
  }
  #choose span{
    margin-left:5px;
    color:#999;
    font-weight:700;
  }
</style>