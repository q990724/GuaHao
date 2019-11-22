<template>
   <div class="login">
      <mt-header title="登录">
            <router-link to="/" slot="left">
                  <mt-button icon="back"></mt-button>
            </router-link>
      </mt-header>
      <div class = "login-text">
		专医帐号可直接登录
	</div>
      <van-cell-group>
            <van-field placeholder="邮箱、手机号或用户名" v-model="uname"/>
      </van-cell-group>
      <van-cell-group>
            <van-field placeholder="密码" v-model="upwd"/>
      </van-cell-group>
      <van-button type="primary" size="large"  @click="login">登&nbsp;&nbsp;录</van-button>
      <div class="to-reg">
            <router-link to="">快速登录/注册</router-link>
      </div>
      <div class = "public">
            <p>登录即表示您已阅读并同意</p>
            <router-link to="">《专医服务协议》</router-link>
            <router-link to="">《法律声明及隐私权政策》</router-link>
      </div>
      <div class = "login-card">
            <img src="../../../../public/images/me/me-reg/weiyi-logo-blue.png" alt="">
      </div>
   </div>
</template>

<script>
import config from "../../../assets/js/config.js"
   export default {
      data(){
			return {
				uname:"",
				upwd:""
			}
      },
      methods:{
			login:function(){
				config.axios.get(
					`/user/login/${this.uname}&${this.upwd}`
				).then(res=>{
					if(res.data.code==1){
						this.$notify({type:"success",message:res.data.msg,duration:1000,
						onOpened:()=>{
								sessionStorage.setItem("userMsg",JSON.stringify(res.data.data))
								this.$router.push("me");
						}
						});
					}
				})
				.catch(err=>{          
					console.log(err)
				})
			}
      },
      created(){
            
      }
   }
</script>

<style scoped>
.login{
      background: #f8f8f8;
      position: relative;
      text-align: center;
}
.mint-header {
      background: #fff;
      font-size: 1.1rem;
      color: #28354c;
}
.login-text{
      font-size: .875rem;
      background:  #f8f8f8;
      color: #83889a;
      line-height: 1.25rem;
      padding: .8125rem 1.25rem;
      text-align: left;
}
.van-cell{
      padding:.9375rem 1rem;
}
.van-cell:first-child{
      padding-left: 2.625rem;
      background: url(../../../../public/images/me/me-reg/icon-user.png) no-repeat 1rem center;
      background-size: 1rem 1rem;
}
.van-cell:nth-child(2){
      padding-left: 2.625rem;
      background: url(../../../../public/images/me/me-reg/icon-pwd.png) no-repeat 1rem center;
      background-size: 1rem 1rem;
}
.van-button--large{
      width: 90%;
      border-radius: 1.875rem;
      margin-top: 1.5625rem;
      height: 2.75rem;
      line-height: 2.75rem;
      background: #2f7fe2;
      border:0;
}
.to-reg{
      text-align: center;
      margin-top: .9375rem;
}
.to-reg a{
      font-size: .875rem;
      color: #3278ee;
}
.public{
      text-align: center;
      font-size: .8125rem;
      margin-top: 1.5rem;
      color: #83889A;
}
.public a{
      display: inline-block;
      margin-top: .375rem;
      color: #589BFF;
}
.login-card img{
      width: 2.8125rem;
      height: 2.8125rem;
      position: absolute;
      top: 38.9375rem;
      left: .625rem;
}
.login-card-item{
      position: absolute;
      top: 0;
      left: .625rem;
}
</style>