<template>
   <mt-header fixed title="预约挂号">
      <router-link to="/" slot="left">
      <mt-button icon="back"></mt-button>
      </router-link>
   </mt-header>
</template>

<script>
   export default {
   
   }
</script>

<style scoped>
   .mint-header.is-fixed{
      background: #fff;
      color: #28354c;
      width: 100%;
      border-bottom: .0625rem solid #ebecf1;
      height: 2.8125rem;
      line-height: 2.8125rem;
      font-size: 1.125rem;
      font-weight: 400;
   }
</style>
