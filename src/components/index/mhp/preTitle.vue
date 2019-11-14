<template>
  <div class="container">
    <div class="con_title">
      <span class="goback" @click="goback"> &lt;</span>
      <span class="pre_title">预约挂号</span>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {

    }
  },
  methods: {
    goback(){
      this.$router.push("/parent");
    }
  },
}
</script>
<style scoped>
.container{
  height: 45px;
  position: fixed;
  top:0px;
  left:0px;
  right:0px;
  background: #fff;
  /* overflow: hidden; */
}
.con_title{
  height:45px;
  background: #fff;
  line-height: 45px;
  font-size: 18px;
  font-weight: 400;
  border-bottom:1px solid #aaa;
}
.goback{
  position: relative;
  left:-120px;
  font-size: 30px;
  line-height: 45px;
}
</style>
