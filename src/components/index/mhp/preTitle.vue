<template>
  <div class="container">
    <div class="con_title">
      <van-icon class="goback" @click="goback" name="arrow-left" /> 
      
    </div>
    <div class="pre_title">预约挂号</div>
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
      this.$router.push("/index");
    }
  },
}
</script>
<style scoped>
.container{
  padding:0 .610687rem;
  height: 2.6125rem;
  position: fixed;
  top:0rem;
  left:0rem;
  right:0rem;
  background: #fff;
  display: flex;
  justify-content: flex-start;
  border-bottom:.0625rem solid #eee;
  /* overflow: hidden; */
}
.con_title{
  height:2.6125rem;
  background: #fff;
  line-height: 2.6125rem;
  font-size: 1.125rem;
  font-weight: 400;

}
.goback{
  /* position: relative;
  left:-7.5rem; */
  font-size: 1.125rem;
  line-height: 2.6125rem;
}
.pre_title{
  width:80%;
  padding-left:.610687rem;
  text-align: center;
  line-height: 2.6125rem;
}
</style>
