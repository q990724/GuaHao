<template>
  <div on="index">
    <parent></parent>
    <bottom></bottom>
    <frame :frameName="0"></frame>
  </div>
</template>

<script>
import parent from '../../components/index/mhp/parent'
import bottom from "../../components/index/wtq/Bottom"
import frame from "../../components/index/frame.vue"
export default {
  components:{
    "parent":parent,
    bottom,
    frame
  }
}
</script>

<style>
  #index{
    background-color:#fff;
  }
</style>
