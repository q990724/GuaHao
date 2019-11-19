<template>
  <div class="normal_p">
    <div class="normal">
      <div class="p_professor" href="">
        <div class="professor">
          <img src="../../../../public/images/index/22toGuahao/icon-export-consult-new.png" alt="">
        </div>
        <p class="zjwz">专家问诊</p>
        <p class="constructor">
          <span>27万</span>
          医生在线
        </p>
      </div>
      <div class="p_professor" href="">
        <div class="professor">
          <img src="../../../../public/images/index/22toGuahao/icon-export-consult-new.png" alt="">
        </div>
        <p class="zjwz">专家问诊</p>
        <p class="constructor">
          <span>27万</span>
          医生在线
        </p>
      </div>
      <div class="p_professor" href="">
        <div class="professor">
          <img src="../../../../public/images/index/22toGuahao/icon-export-consult-new.png" alt="">
        </div>
        <p class="zjwz">专家问诊</p>
        <p class="constructor">
          <span>27万</span>
          医生在线
        </p>
      </div>
    </div>
    <div class="ad">
      <div>
        <img src="../../../../public/images/index/22toGuahao/首页会员-2.png" alt="">
      </div>
    </div> 
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.normal_p{
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  margin-top: .9375rem;
  /* width:343px;
  height:100px;
  margin:15px 15px 0px 15px; */
  /* position: relative; */
  /* top:40px; */
}
.normal{
  width: 100%;
  height:6.25rem;
  /* margin:0px 15px 0px 25px; */
  display: flex;
  justify-content: space-between;
  padding:0 .854962rem;
}
.p_professor{
  width:6.625rem;
  height:6.25rem;
  text-align: center;
}
.professor{
  width:3.375rem;
  height:3.375rem;
  background: #e8f0fe;
  border-radius: 50%;
  margin:0 auto;
}
.professor>img{
  width:2.25rem;
  height:2.25rem;
  position: relative;
  top:.5rem;
}
.zjwz{
  margin-top:.625rem;
  margin-bottom:.1875rem;
  font-size:1.125rem;
  font-style:"微软雅黑";
  line-height: 1.125rem;
  font-weight: 600;
  color:#28354c;
}
.constructor{
  font-size:.75rem;
  color:#9d9ea7;
  margin-top: .5rem;
}
.constructor>span{
  color:#3f86ff;
}
.ad{
  /* width:375px; */
  width: 100%;
  margin-top: .9375rem;
}
.ad>div{
  /* width:365px; */
  width: 100%;
  height: 100%;
  /* position: relative; */
  /* top:20px; */
  /* left:-10px; */
}
.ad>div>img{
  width:100%;
  height:100%;
}
</style>
