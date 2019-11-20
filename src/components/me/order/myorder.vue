<template>
  <div id="my-order">
    <!-- 组件 导航栏 -->
    <van-nav-bar
  title="预约单"
  left-arrow
  @click-left="onClickLeft"
  @click-right="onClickRight"
/>
    <!--下方订单内容-->
    <div class="order-info">
      <div class="hos-info">
        <!-- 医生头像 -->
        <div class="doc-img">
          <img src="../../../../public/images/jkh/touxiang.png">
        </div>
        <!-- 第一行 -->
        <div class="doc-info">
          <div class="top">
            <span>医生名</span>
            <span>副主任医师</span>
          </div>
          <div class="bottom">
            <span>上海交通大学医学院附属瑞金医院</span>
            <span>门诊口腔科</span>
          </div>
          <div class="right">
            <span>就诊时间：</span>
            <span>2019-11-19 (星期五) 下午</span>
          </div>
        </div>
      </div>
        <!-- 第二行 -->
        <div class="type">
          <div class="left">
            <span>门诊类型：</span>
            <span>专家门诊</span>
          </div>
          <div class="mid">
            <span>挂号费：</span>
            <span>¥20.00</span>
          </div>
          <div class="right">
            <span>线下支付：</span>
            <span>到医院付</span>
          </div>
          
        </div>
        <div class="order-status">
          <div class="order-suc">
            <span style="color:#61687c">订单状态：</span>
            <span style="font-weight:700">预约成功</span>
          </div>
          <div class="order-fail">
            <span  class="yao" >取消预约</span>
          </div>
        </div>
    </div>
    <div class="order-info">
      <div class="hos-info">
        <!-- 医生头像 -->
        <div class="doc-img">
          <img src="../../../../public/images/jkh/touxiang.png">
        </div>
        <!-- 第一行 -->
        <div class="doc-info">
          <div class="top">
            <span>医生名</span>
            <span>副主任医师</span>
          </div>
          <div class="bottom">
            <span>上海交通大学医学院附属瑞金医院</span>
            <span>门诊口腔科</span>
          </div>
          <div class="right">
            <span style="font-weight:700">就诊时间：</span>
            <span style="font-weight:700">2019-11-19 (星期五) 下午</span>
          </div>
        </div>
      </div>
        <!-- 第二行 -->
        <div class="type">
          <div class="left">
            <span>门诊类型：</span>
            <span>专家门诊</span>
          </div>
          <div class="mid">
            <span>挂号费：</span>
            <span>¥20.00</span>
          </div>
          <div class="right">
            <span>线下支付：</span>
            <span>到医院付</span>
          </div>
          
        </div>
        <div class="order-status" >
          <div class="order-suc">
            <span style="color:#61687c">订单状态：</span>
            <span style="font-weight:700">预约成功</span>
          </div>
          <div class="order-fail">
            <span  class="yao" >取消预约</span>
          </div>
        </div>
    </div>
    
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
.van-nav-bar .van-icon{
  color:#000;
  font-size:1.221374rem;
}

.order-info{
  font-size:.732824rem;
  color:#000;
  padding:.732824rem;
  margin:.48855rem 0;
  /* border:.030534rem solid #a1a1a1; */
  /* border-radius:.305344rem; */
  box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
  background-color:#fff;
  
}
.doc-info>div{
  margin-top:.48855rem;
}
.type div{
  margin-top:.48855rem;
}
.type{
  display:flex;
  margin:.183206rem 0 .183206rem 1.221374rem;
}
.hos-info{
  display:flex;
  justify-content: space-around;
  height:4.580153rem;
}
.top{
  height:1.221374rem;
  line-height:1.221374rem;
  
}
.yao{
  border:1px solid #468aff;
  background-color:#468aff;
  color:#fff;
  text-align: center;
  border-radius:.610687rem;
  padding:.183206rem;
}
.top span:first-child{
  font-size:.732824rem;
  font-weight: 700;
  margin-right:.916031rem;
}
.order-status{
  display:flex;
  justify-content: space-between;
  margin-top:1.48855rem;
}
.order-status .order-suc{
  margin-left:1.221374rem;
}
.doc-img{
  width:3.664122rem;
  height:3.664122rem;
  margin-top:.610687rem;
}
.doc-img img{
  width:100%;
}
</style>
