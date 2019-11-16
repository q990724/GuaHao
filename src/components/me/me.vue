<template>
  <div>
    <div class="top">
      <mt-header title="我">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <div class="my-msg">
        <img src="../../../public/images/me/me-header/qZY78470658.png" width="100%">
        <div class="msg">
          <p class="username">用户wy02316469720</p>
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
          <van-swipe :autoplay="3000" style="height: 20px; width:200px;" vertical :show-indicators="false">
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
      </div>
    </div>
  </div>
</template>
<script>

export default {

};
</script>
<style scoped>
.mint-header {
  background: #fff;
  font-size: 1.1rem;
  color: #28354c;
}
.top {
  position: relative;
}
.my-msg {
  background-image: url('../../../public/images/me/me-header/OXn117171976.png');
  background-size: 100%, 100%;
  height: 11.25rem;
  display: flex;
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
  top: 2.8125rem;
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
  width:90%;
  height:2.75rem;
  background:url("../../../public/images/me/me-header/OLY117168734.png") no-repeat;
  background-size:100% 100%;
  position:absolute;
  left:5%;
  top:11.5625rem;
  display: flex;
  justify-content:space-around;
  align-items: center;
  padding:0 10px;
  box-sizing: border-box;
}

.vip .health{
  height:1.25rem;
  width:50%;
  text-align: left;
  padding-left:1.6875rem;
  font-size:1rem;
  color:#6B331A;
  font-weight:600;
  background:url('../../../public/images/me/me-header/Mr9117168729.png') no-repeat left center;;
  background-size:1.25rem 1.25rem;
}
.van-ellipsis{
  width:200px;
  font-size:.875rem;
  color:#6B331A;
}
.to-right{
  display:block;
  width:1.25rem;
  height:1.25rem;
  background:url("../../../public/images/me/me-header/r87117168736.png") no-repeat left center;
  background-size:.875rem .875rem;
}
.discount{
  padding:1.25rem 0;
  display: flex;
  justify-content: space-around;
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




.tools-item{
    display: flex;
    justify-content: space-around; 
    border-top: .0625rem solid  #eee;
  }
  .tools-item-img{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: center;
    color: #83889a;
    padding: 1.035rem 0 .8125rem;
    font-size: .8125rem;
    width: 17%;
  }
  .tools-item-img img{
    width: 1.5rem;
    height: 1.5rem;
    display: block;
    margin-bottom:.5rem; 
  }
</style>
  