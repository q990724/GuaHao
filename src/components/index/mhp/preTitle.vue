<template>
  <div class="container">
    <div class="con_title">
        <van-icon class="goback" @click="goback" name="arrow-left" />
      <!-- <span class="goback" @click="goback"> &lt;</span> -->
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
  height: 2.8125rem;
  position: fixed;
  top:0rem;
  left:0rem;
  right:0rem;
  background: #fff;
  /* overflow: hidden; */
}
.con_title{
  height:2.8125rem;
  background: #fff;
  line-height: 2.8125rem;
  font-size: 1.125rem;
  font-weight: 400;
  border-bottom:.0625rem solid #aaa;
}
.goback{
  position: relative;
  left:-7.5rem;
  font-size: 1.125rem;
  line-height: 2.8125rem;
}
</style>
