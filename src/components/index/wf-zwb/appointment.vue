<template>
   <div class = "my-register">
      <mt-header title="预约信息">
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
        <div>
          <div class = "information-item">
              <span>就诊医院:</span>
          </div>
          <div class = "information-item"> 
            <span>瑞金医院(医联平台)</span>
          </div>
        </div>
        <div>
          <div class = "information-item">
              <span>科室医生:</span>
          </div>
          <div class = "information-item"> 
            <span>门诊肾脏 - 潘晓霞</span>
          </div>
        </div>
        <div>
          <div class = "information-item">
              <span>门诊时间:</span>
          </div>
          <div class = "information-item"> 
            <span class = "text-color">2019-12-02 周一 下午</span>
          </div>
        </div>
        <div>
          <div class = "information-item">
              <span>门诊类型:</span>
          </div>
          <div class = "information-item"> 
            <span>专家门诊</span>
          </div>
        </div>
        <div>
          <div class = "information-item">
              <span>费用:</span>
          </div>
          <div class = "information-item"> 
            <span>68.00元 （挂号费）</span>
          </div>
        </div>
      </div>
      <div class = "be-careful">
        <van-collapse v-model="activeNames" accordion = "false" style="padding:0;">
          <van-collapse-item name="1" >
            <div slot="title" >
              <span>挂号费由医院自行设定，平台不收取任何额外费用。</span><br>
              <span>我已了解并同意以下规则（点击查看详情）</span> 
            </div>
            <p>停诊将短信通知，请保持手机畅通</p>
            <p>实名制预约，就诊人信息不符将无法取号</p>
          </van-collapse-item>
        </van-collapse>
      </div>
      <div class = "tips">
        <span>本院仅支持身份证;此为分时号源，支付成功后不能取消，需到医院现场取消</span>
      </div>
      <div class = "patient">
        <div>
          <div>
            <span>就诊人:</span>
          </div>
          <div>
            <router-link to="">李明</router-link>
            <i></i>
          </div>
        </div>
      </div>
      <div class = "patient">
        <div>
          <div>
            <span>预约时间段:</span>
          </div>
          <div>
            <span @click="open">{{time}}</span>
            <i></i>
          </div>
        </div>
      </div>
      <div class = "patient">
        <div>
          <div>
            <span>所患疾病:</span>
          </div>
          <div>
            <router-link to="" class = "a_color">请选择疾病</router-link>
            <i></i>
          </div>
        </div>
      </div>
      <van-action-sheet v-model="show" :actions="actions" cancel-text="取消" @cancel="onCancel" @select = "phoneMethod" @click-overlay = "hide" style="width:27rem;"/>
      <button class = "my-register-btn">提交</button>
   </div>
</template>

<script>
   export default {
      data(){
        return {
          activeNames: ['1'],
          show: false,
          actions: [
          { name: '08:00-08-59'},
          { name: '09:00-09-59'},
          { name: '10:00-10-59'}
          ],
          time:"08:00-08-59"
        }
      },
      methods:{
        open(){
            this.show = !this.show;
         },
        hide(){
            this.show = false;
         },
         phoneMethod(item){
            var str = item.name;
            this.time = str;
            this.show = false;
         },
         onCancel() {
            this.show = false;
         },
      }
   }
</script>

<style scoped>
   .mint-header{
      background: #fff;
      font-size: 1.1rem;
      color: #28354c;
      width: 26rem;
      position: fixed;
      top: 0;
      border-bottom: .0625rem solid #ebecf1;
   }
   .doc-title{
      padding: .3125rem .625rem;
      border-bottom: .04266667rem solid #eee;
      height: 3.375rem;
      display: flex;
      justify-content: start;
      align-items: center;
      margin-top: 2.5rem;
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
       line-height: 2.4;
       font-size: 1.03125rem; 
       color: #333;
       margin: 0 .75rem 0 .625rem;
       font-weight: 500;
    }
    .information{
      background: #fff;
      color: #a6a8b6;
      font-size: .875rem;
      border-bottom: .0375rem solid #eeeeee;
      padding: .7rem;
    }
    .information div{
      display: flex;
      width: 100%;
    }
    .information div>.information-item:first-child{
      width: 22%;
    }
    .information div>.information-item:last-child{
      text-align: left;
      width: 78%;
      color: #333;
    }
    .information-item{
      height: 1.79375rem;
      line-height: 1.79375rem;
      box-sizing: border-box;
    }
    .text-color{
      color: #3278ee;
    }
    .be-careful{
      background: #fff;
      padding: .7rem 0 .7rem .7rem;
    }
    .van-cell span:first-child{
      color: #3278ee;
      font-size: .875rem;
    }
    .van-cell span:last-child{
      color: #83889a;
    }
    .van-cell{
      padding: 0;
    }
    .van-collapse-item__content p{
      color:#83889a;
      font-size: .9375rem !important;  
    }
    .van-collapse-item__content p::before{
      content: "\B7"
    }
    .tips{
      border-top: .0375rem solid #eee;
      font-size: .9375rem;
      color: #c4c5ce;
      background: #ffffff;
      height: 3.625rem;
      line-height: 1;
      padding: .7rem 1.7rem 0 1.7rem;
      box-sizing: border-box;
    }
    .tips span{
      display: inline-block;
      height: 2.625rem;
      line-height: 1.35;
    }
    .patient{
      background: #fff;
      margin-top: .7rem;
    }
    .patient div{
      padding: 0 .7rem;
      display: flex;
      height: 2.75rem;
      line-height: 2.75rem;
    }
    .patient div>div:first-child{
      width: 65%;
      color: #a6a8b6;
      margin-right: .75rem;
      font-size: 1rem;
    }
    .patient div>div:last-child{
      width: 35%;
      position: relative;
      text-align: right;
    }
    .patient div>div:last-child a,.patient div>div:last-child span{
      display: inline-block;
      width: 100%;
      color: #28354c;
    }
    .patient div>div:last-child i{
      position: absolute;
      top: 1.34375rem;
      right: 0;
      width: .5rem;
      height: .5rem;
      border-left: .03125rem solid #999;
      border-bottom: .03125rem solid #999;
      transform: translate(0,-50%) rotate(-135deg);
    }
    .a_color{
      color: #c4c5ce !important;
    }
    .my-register-btn{
      display: block;
      height: 3.2rem;
      line-height: 3.2rem;
      font-size: 1.0625rem;
      background-color: #3f86ff;
      color: #fff;
      width: 90%;
      margin: 1.25rem auto; 
      border-radius: 3.125rem;
      border: 0;
    }
</style>
