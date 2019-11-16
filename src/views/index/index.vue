<template>
  <div on="parent">
    <parent></parent>
    <bottom-bar></bottom-bar>
  </div>
</template>

<script>
import parent from '../../components/index/mhp/parent'
import BottomBar from '../../components/index/wtq/BottomBar'
export default {
  components:{
    "parent":parent,
    "bottomBar":BottomBar,
  }
}
</script>

<style>

</style>
