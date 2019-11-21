<template>
  <div class="parent">
    <div class="top">
      <mt-header title="我">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <div class="my-msg">
        <img src="../../../public/images/me/me-header/touxiang.png" width="100%">
        <div class="msg">
          <p class="username">{{user_name}}</p>
          <router-link to="/" class="complete">完善信息</router-link>
          <router-link to="/" class="award">领取Lv2福利</router-link>
        </div>
      </div>
      <div class="setting">
        <router-link to="">
          <img src="../../../public/images/me/me-header/icon-set.png" width="100%">
        </router-link>
      </div>
      <div class="vip">
        <div class="health">健康VIP会员</div>
        <div calss="adv">
          <van-swipe :autoplay="3000" style="height: 2rem; width:12.5rem" vertical :show-indicators="false">
            <van-swipe-item>
              <div class="van-ellipsis">每天只需0.5元/天，一年预计可省1510元</div>
            </van-swipe-item>
            <van-swipe-item>
              <div class="van-ellipsis">解锁专家号源实时提醒，挂号不再难</div>
            </van-swipe-item>
          </van-swipe>
        </div>
        <router-link to="" class="to-right"></router-link> 
      </div>
      <div class="discount">
        <router-link to="" class="dis-item">
          <span>0</span>
          <p>优惠券(张)</p>
        </router-link>
        <router-link to="" class="dis-item">
          <span>10</span>
          <p>健康币(个)</p>
        </router-link>
        <router-link to="" class="dis-item">
          <span>****</span>
          <p>健康账户(元)</p>
        </router-link>
      </div>
      <div class="order">
        <h4>我的订单</h4>
        <div class = "tools-list">
          <tools-item v-for="(item,i) of list.slice(0,4)" :key="i" :item="item" class = "tools-list-item">
          </tools-item>
        </div>
      </div>
      <tools></tools>
    </div>
    <frame :frameName="3"></frame>
  </div>
</template>
<script>
import toolsItem from "./wf/tools-item.vue"
import tools from "./wf/tools.vue"
import frame from "../index/frame.vue"
export default {
  data(){
    return {
      list:[
          {text:"我的预约",path:"me/me-order/icon-book.png"},
          {text:"我的问诊",path:"me/me-order/icon-consult.png"},
          {text:"服务包订单",path:"me/me-order/icon-order.png"},
          {text:"商品订单",path:"me/me-order/icon-order2.png"},
      ],
      result:{},
      user_name:""
    }
  },
  created(){
    this.result=this.$route.params.data
    if(!this.result.user_name){
      var time=new Date().getTime().toString().slice(3)
      this.user_name="zy"+time;
    }
    sessionStorage.setItem("userMsg",JSON.stringify(this.result))
  },
  components:{
    toolsItem,tools,frame
  }
};
</script>
<style scoped>
.mint-header {
  background: #fff;
  font-size: 1.1rem;
  color: #28354c;
  position: fixed;
  top: 0;
  width: 26rem;
  z-index: 999;
}
.top {
  position: relative;
}
.my-msg {
  background-image: url('../../../public/images/me/me-header/OXn117171976.png');
  background-size: 100%, 100%;
  height: 11.25rem;
  display: flex;
  margin-top:1.5rem;
  padding: 0.625rem 0.625rem 0 0.625rem;
}
.my-msg > img {
  width: 3.75rem;
  height: 3.75rem;
  border-radius: 100%;
  border: 0.125rem solid #fff;
  margin-top: 1.875rem;
}
.msg {
  text-align: left;
  margin-left: 0.625rem;
}

.msg .username {
  font-size: 1.25rem;
  color: #fff;
  line-height: 1.25rem;
  margin-top: 1.875rem;
}
.msg .complete {
  font-size: 0.875rem;
  color: #fff;
}
.setting a {
  position: absolute;
  right: 0.625rem;
  top: 1.5rem;
  width: 1.5625rem;
  height: 1.5625rem;
}
.award {
  display: block;
  width: 5.3125rem;
  height: 1.6875rem;
  font-size: 0.875rem;
  color: #fff;
  line-height: 0.875rem;
  margin-top: 0.9375rem;
  line-height: 1.6875rem;
  padding-left: 2.375rem;
  padding-right: 0.3125rem;
  background: url('../../../public/images/me/me-header/membership.png') 0.6rem center no-repeat rgba(0, 0, 0, 0.1);
  background-size: 1.125rem 1.125rem;
  border-radius: 1rem;
}
.my-msg .award::before {
  content: '';
  display: block;
  float: left;
  width: 1.125rem;
  height: 1.125rem;
  background: url('../../../public/images/me/me-header/gift.gif') no-repeat rgba(0, 0, 0, 0.1);
  background-size: 1.125rem 1.125rem;
  border-radius: 100%;
  margin-top: 0.28125rem;
  margin-left: -1.71875rem;
}
.vip{
  width:94%;
  height:2.75rem;
  background:url("../../../public/images/me/me-header/OLY117168734.png") no-repeat;
  background-size:100% 100%;
  position:absolute;
  left:3%;
  top:9.125rem;
  display: flex;
  justify-content:space-between;
  align-items: center;
  padding:0 10px;
  box-sizing: border-box;
}

.vip .health{
  height:1.25rem;
  width:50%;
  text-align: left;
  line-height: 1.25rem;
  padding-left:1.6875rem;
  font-size:1rem;
  color:#6B331A;
  font-weight:600;
  background:url('../../../public/images/me/me-header/Mr9117168729.png') no-repeat left -.125rem;
  background-size:1.25rem 1.25rem;
}
.van-ellipsis{
  width:11.25rem;
  line-height: 2rem;
  font-size:.875rem;
  color:#6B331A;
}

.to-right{
  display:block;
  width:1.5625rem;
  height:1.5625rem;
  background:url("../../../public/images/me/me-header/r87117168736.png") no-repeat left center;
  background-size:.875rem .875rem;
}
.discount{
  padding:1.25rem 0;
  margin-bottom: .625rem;
  display: flex;
  justify-content: space-around;
  background: #fff;
}
.dis-item{
  display:inline-block;
  text-align: center;
}
.dis-item span{
  color:#333;
  font-size:1.125rem;
}
.dis-item p{
  color:#83889a;
  font-size:.875rem;
  font-weight: 300;
  margin-top:5px;
}
.order h4{
  padding:10px 0;
  font-size:1.125rem;
  color:#83889a;
  font-weight: 500;
}
.order{
  margin-bottom: .625rem;
  text-align: center;
  background: #fff;
}

.tools-list{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around; 
}
.tools-list-item{
  width: 25%;
}
</style>
