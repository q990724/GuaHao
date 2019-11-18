<template>
   <div class = "my-register">
      <mt-header fixed title="预约信息">
         <router-link to="/" slot="left">
         <mt-button icon="back"></mt-button>
         </router-link>
      </mt-header>
      <div class = "doc-title">
         <img src="../../../../public/images/me/me-header/qZY78470658.png" alt="">
         <span>吴佩</span>
         医生
      </div>
      <div class = "information">
         <div></div>
      </div>
   </div>
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
   .doc-title{
      padding: .3125rem .625rem;
      border-bottom: .04266667rem solid #eee;
      height: 3.375rem;
      display: flex;
      justify-content: start;
      align-items: center;
      margin-top: 2.8125rem;
      background: #fff;
      font-size: .75rem;
      color: #83889A;     
      box-sizing: border-box;
   }
   .doc-title img{
      width: 2.6875rem;
      height: 2.6875rem;
      border-radius: 50%;
      border: .08533333rem solid #fff;
      box-sizing: border-box;
   }
    .doc-title span{
       display: inline-block;
       height: 100%;
       line-height: 2.7;
       font-size: 1.03125rem; 
       color: #333;
       margin: 0 .75rem 0 .625rem;
       font-weight: 500;
    }
    .information{
      background: #fff;
      color: #a6a8b6;
    }
</style>
