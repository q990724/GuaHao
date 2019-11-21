<template>
  <div on="index">
    <parent></parent>
    <bottom></bottom>
  </div>
</template>

<script>
import parent from '../../components/index/mhp/parent'
import bottom from "../../components/index/wtq/Bottom"
export default {
  components:{
    "parent":parent,
    bottom
  }
}
</script>

<style>
  #index{
    background-color:#fff;
  }
</style>
