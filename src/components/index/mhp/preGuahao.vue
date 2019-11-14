<template>
  <div class="container">
    <preTitle></preTitle>
    <wysearch></wysearch> 
    <div class="four">
      <ul>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/01.预约挂号-医院列表+copy+8@2x.png" alt="">
          </div>
          <span>三甲体检</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/01.预约挂号-医院列表+copy+8@2x.png" alt="">
          </div>
          <span>三甲体检</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/01.预约挂号-医院列表+copy+8@2x.png" alt="">
          </div>
          <span>三甲体检</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/01.预约挂号-医院列表+copy+8@2x.png" alt="">
          </div>
          <span>三甲体检</span>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
import preTitle from "./preTitle";
import wysearch from "./wysearch";
export default {
  data() {
    return {
      
    };
  },
  components:{
    "preTitle":preTitle,
    "wysearch":wysearch,
  },
}
</script>
<style scoped>
templete{
  height:75rem;
}
.tree{
  height:75rem !important;
}
.four{
  width:100%;
  height:5.875rem;
  border-bottom: .0625rem solid #eee;
}
.four>ul{
  display: flex;
  justify-content: space-between;
}
.four>ul>li{
  width:5.859375rem;
  height:5.875rem;
}
.four>ul>li>div>img{
  width:3.25rem;
  height:3.25rem;
}
.four>ul>li>span{
  font-size: .75rem;
}
</style>
