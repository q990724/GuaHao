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
    </div>
  </div>
</template>
<script>
export default {};
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
</style>
  