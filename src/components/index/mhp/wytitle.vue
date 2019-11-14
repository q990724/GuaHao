<template>
  <div class="wytitle">
    <div class="top_title">
      <h3 class="h3">
        微医(挂号网)-互联网医院在线诊疗平台
      </h3>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.wytitle{
  /* width:100%; */
  height:45px;
  position: fixed;
  left: 0px;
  right: 0px;
  top:0px;
  bottom: 0px;
  z-index: 999;
  text-align: center;
  background: #fff;
  /* overflow-y: auto;
  min-height: 45px;
  line-height: 45px; */
}
.wytitle>.top_title{
  /* width:100%; */
  /* height:45px; */
  /* margin: 0 auto; */
  border-bottom:1px solid #aaa;
}
.wytitle .h3{
  /* position:absolute;
  left:60px;
  right:60px; */
  width:255px;
  height:45px;
  margin:0 auto;
  font-size:18px;
  text-align: center;
  line-height: 45px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-weight: 400;
}
</style>
