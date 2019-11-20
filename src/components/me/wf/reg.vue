<template>
   <div class = "reg">
      <mt-header title="快速登录/注册">
         <router-link to="/" slot="left">
            <mt-button icon="back"></mt-button>
         </router-link>
      </mt-header>
      <div class = "reg-user">
         <i class = "reg-user-icon"></i>
         <span class = "reg-user-phone" @click="open">{{phone}}</span>
         <div class = "reg-user-input">
            <input type="text" placeholder = "用于接收预约成功短信，请谨慎填写">
         </div>
      </div>
      <div class="reg-pwd">
            <van-cell-group>
               <van-field placeholder="验证码"/>
            </van-cell-group>
            <van-button type="default">发送验证码</van-button>
      </div>
      <van-button type="primary" size="large">确&nbsp;&nbsp;定</van-button>
      <div class = "pwd-login">
         <router-link to="/login">密码登录</router-link>
      </div>
      <div class = "reg-text">
         <p>未注册手机验证后将自动进行注册，点击“确定”即表示您已阅读并同意以下协议</p>
         <router-link to="">《微医服务协议》</router-link>
         <router-link to="">《法律声明及隐私权政策》</router-link>
      </div>
      <!-- <van-action-sheet v-model="show" :actions="actions" @select="onSelect" /> -->
      <van-action-sheet v-model="show" :actions="actions" cancel-text="取消" @cancel="onCancel" @select = "phoneMethod" @click-overlay = "hide" style="width:27rem;"/>
   </div>
</template>

<script>
   export default {
       data() {
         return {
            show: false,
            actions: [
            { name: '中国香港 +852'},
            { name: '中国澳门 +853'},
            { name: '中国大陆 +86'}
            ],
            phone:"+86"
         }
       },
       methods: {
         open(){
            this.show = !this.show;
         },
         onSelect(item) {
            // 默认情况下，点击选项时不会自动关闭菜单
            // 可以通过 close-on-click-action 属性开启自动关闭
            this.show = false;
         },
         onCancel() {
            this.show = false;
         },
         phoneMethod(item){
            var str = item.name.split(" ")[1];
            this.phone = str;
            this.show = false;
         },
         hide(){
            this.show = false;
         }
      }     
   }
</script>

<style scoped>
.reg{
   background: #f8f8f8;
   text-align: center;
}
.mint-header {
   background: #fff;
   font-size: 1.1rem;
   color: #28354c;
}
.van-cell:first-child{
   padding-left: 2.625rem;
   background: url(../../../../public/images/me/me-reg/icon-user.png) no-repeat 1rem center;
   background-size: 1rem 1rem;
}
.reg-user{
   margin-top: 1.5625rem;
   border-top: .0625rem solid #eeeeee;
   height: 3.125rem;
   line-height: 3.125rem;
   background: #fff;
   position: relative;
}
.reg-user-icon{
   background: url(../../../../public/images/me/me-reg/icon-user.png);
   width: 1.0625rem;
   height: .9375rem;
   display: inline-block;
   background-position: 0rem 0rem;
   background-size: cover;
   margin-top: 1.0625rem;
   margin-left: .9375rem;
   position: absolute;
   top: 0;
   left: 0;
}
.reg-user-phone{
   position: absolute;
   top: 0;
   left: 2.25rem;
   display: inline-block;
}
.reg-user-phone::after{
   content: "";
   position: absolute;
   top: 50%;
   right: -0.8125rem;
   margin-top: -0.110625rem;
   height: .441875rem;
   width: .441875rem;
   border-width: .0625rem .0625rem 0 0;
   border-color: #000;
   border-style: solid;
   transform-origin: 75% 25%;
   box-sizing: border-box;
   transform: rotate(135deg);
}
.reg-user-input{
   margin-right: .75rem;
   padding-left: 2.5rem; 
   width: 75%;
   margin-left: 3.125rem;
}
.reg-user-input input{
   width: 100%;
   text-align: right;
   height: 1.875rem;
   line-height: 1.875rem;
   background: #fff;
   padding: .3125rem 0;
   outline: 0;
   border: none;
   font-size: .875rem;
}
.reg-user-input input::-webkit-input-placeholder{
   color:#bdbdbd;
}
.reg-pwd{
   margin-top: .625rem;
   position: relative;
}
.reg-pwd>.van-cell-group{
      height:3.125rem;
}
.van-cell:first-child{
   padding-left: 2.625rem;
   background: url(../../../../public/images/me/me-reg/icon-captcha.png) no-repeat 1rem center;
   background-size: 1rem 1rem;
}
.van-button--normal{
   position: absolute;
   top: .3125rem;
   right: .5rem;
   color: #fff;
   background-color: #2f7fe2;
   border-radius: .3125rem;
   height: 80%;
}
.van-field__control{
   width: 55% !important;
}
.van-button--large{
   margin-top: 1.875rem;
   width: 98%;
   border-radius: 1.5625rem; 
   height: 2.8125rem;
   line-height: 2.8125rem;
   color: #fff;
   background-color: #2f7fe2;
   border: 0;
}
.pwd-login{
   padding-top: .625rem;
   text-align: center;
   margin-top: .9375rem;
}
.pwd-login a{
   color: #3278ee;
   text-decoration: underline;
   font-size: .875rem;
}
.reg-text{
   text-align: center;
   font-size: .8125rem;
   color: #83889A;
   padding: 0 1.5rem;
   margin-top: 1.5rem;
}
.reg-text a{
   display: inline-block;
   margin-top: .25rem;
   color: #589BFF;
}
.subName{
   font-size: 1rem;
}
</style>
