<template>
  <div class="wytitle">
    <van-nav-bar
   class="font_title" title="专医(挂号网)-互联网医院在线诊疗平台"
/>
    <!-- <mt-header class="font_title" title="专医(挂号网)-互联网医院在线诊疗平台">  

    </mt-header> -->
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.wytitle>.font_title{
  width: 100%;
}
.wytitle{
  /* width:100%; */
  width: 26rem;
  height:2.6125rem;
  position: fixed;
  top:0rem;
  bottom: 0rem;
  z-index: 999;
  text-align: center;

  /* overflow-y: auto;
  min-height: 45px;
  line-height: 45px; */
}
.wytitle>.font_title{
  /* width:100%; */
  /* height:45px; */
  /* margin: 0 auto; */
  background: #fff !important;
  border-bottom:.0625rem solid #ebecf1;
  /* position:absolute;
  left:60px;
  right:60px; */
  /* width:15.9375rem; */
  height:2.6125rem;
  margin:0 auto;
  font-size:1.125rem;
  text-align: center;
  line-height: 2.6125rem;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-weight: 400;
  color:#333;
}
</style>
