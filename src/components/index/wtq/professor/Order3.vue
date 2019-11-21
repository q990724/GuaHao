<template>
<!-- 第三个页面  选专家 -->
  <div on="export"> 
    <!-- 组件 顶部导航栏 -->
    <van-nav-bar title="耳鼻咽喉头颈外科" left-arrow fixed/>
    <!-- @click-left="onClickLeft"-->
    <!-- 时间选择 -->
    <div class="choose-all">
      <div class="buxian">
        <span class="left-date zindex fixed one">不限</span>
        <span class="left-date zindex fixed two">日期</span>
      </div>
      <div class="can-choose-date">
        <!-- 时间得后期自动获取 -->
        <!-- 每个时间是一个 -->
        <div class="date" v-for="(day,ind) of days" :key="ind">
          <span>周一</span>
          <h4>11.09</h4>
        </div>
        <!-- 循环生成 -->
      
      </div>
    </div>
    <!-- 组件:下拉菜单 -->
     <van-dropdown-menu>
      <van-dropdown-item v-model="value1" :options="option1" />
    </van-dropdown-menu>
    <!-- 医生个人信息 循环生成 -->
      <div class="main-doctor">
        <!-- 循环生成医生的预约信息列表 -->
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <!-- 循环多个 -->
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
        <div class="order">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.webp">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info">  
            <!-- 第一行 -->
            <div class="first-info">
              <div class="left">
                <h4>翟所强</h4><h6>主任医师</h6><span>问</span><span>服务包</span>
              </div>
              <span>预约</span>
            </div>
            <!-- 第二行 -->
            <div class="second">
              <span>评分 8.9</span><span>预约量 2385</span>
            </div>
            <!-- 第三行 -->
            <div class="third">
              <span class="good-at">擅长:周一上午、周三全天挂号费100元,周二上午特需门诊,翟所强医生线上门诊</span>
            </div>
            
          </div>
        </div>
      </div>
  </div>
</template>

<script>
export default {
   data() {
    return {
      value1: 0,
      value2: 'a',
      option1: [
        { text: '专家擅长', value: 0 },
        { text: '全部', value: 1 },
        { text: '糖尿病', value: 2 },
        { text: '甲状腺', value: 3 },
        { text: '甲状腺', value: 4 },
        { text: '甲状腺', value: 5 },
        { text: '甲状腺', value: 6 }
      ],
      

    }
  },
  methods:{
    getDate(){

    }
  },
  
}
</script>

<style>
#export{
  position:relative;
}
.van-dropdown-menu__item{
  justify-content: start !important;
}
[class*=van-hairline]::after{
  border:0px solid #fff;
}
/* 顶部导航 固定的左上角的颜色 */
.van-nav-bar .van-icon{
  color:#28354c !important;
}
/* 选择时间样式 */
  .choose-all{
    border:.04266667rem solid #e3e3e3;
    border-right:0rem solid ;
    width:100%;
    height:4rem;
    position:fixed;
    top:3.3rem;
    left:0;
    z-index:5;
    background-color:#fff;
  }
  /* 点击上的样式 */
  .click{
    border-bottom:.061069rem solid #36d;
    color:#36d;
  }
  .left-date{
    position:fixed;
    top:2.80916rem;
    left:1rem;
    width:2rem;
    z-index:999;
    text-align:left;
    font-size:.732824rem;
    padding-top:1.1rem;
  }
  
  .two{
    margin-top:1rem;
  }
  .can-choose-date{
    margin-left:3rem;
    text-align:center;
    width:100%;
    height:3.3rem;
    display:flex;
    flex-wrap: nowrap;
    /* position:fixed; */
    left:3rem;
    top:2.80916rem;
    overflow-x:auto;
    overflow-y:hidden;
    white-space: nowrap;
    justify-content: space-between;
    margin-top:.305344rem;
    z-index:1;
  }
  .date{
    padding:.5rem .610687rem ;
    height:2rem;
  }
  .date span:first-child{
    font-size:.732824rem;
  }




/* ddd */
  .van-dropdown-menu{
    padding-top: 9.5rem;
    z-index:0;
    border-bottom:.04266667rem solid #e3e3e3;
    height:2.748092rem !important;
    /* position:fixed !important; */
  }
  .van-dropdown-menu__title{
    text-align:left !important;
  }
  .order{
    display:flex;
    flex-wrap:nowrap; 
    border-bottom:.061069rem solid #e3e3e3;
    /* width:22.900763rem; */
    padding:.610687rem;
  }
/* 医生头像 */
  .doc-img{
    display:inline-block;
    text-align:Left;
  }
  .doc-img img{
    width:2.931298rem;
    height:3.236641rem;
    border-radius:50%;
    margin-top:.732824rem;
  }
  .doc-info{
    width:19.770992rem !important;
    padding:.305344rem .610687rem;
  }
  .first-info{
    
    height:1.221374rem;
    line-height:1.221374rem; 
    display:flex;
    flex-wrap: nowrap; 
    justify-content: space-between;
  }
  .left h4,.left h6,.first-info span{
    display:inline;
  }
  .first-info span{
    border-radius:.105344rem;
    color:#fff;
    font-size:.732824rem;
    width:.916031rem;
    height:.916031rem;
    padding:.030534rem .005344rem;
    line-height: .916031rem;
    text-align: center;
  }
  .left{
    width:12.053435rem;
    display:flex;
    justify-content: space-between;
  }
  .left span:nth-child(3){
    border:.061069rem solid #ffa900;
    background-color:#ffa900;
   
  }
  .left span:nth-child(4){
    border:.061069rem solid #ff695c;
    background-color:#ff695c;
    width:2.221374rem;
  }
  .first-info span:nth-child(2){
    border:1px solid #468aff;
    color: #468aff;
    width: 2.6rem;
    height:.916031rem;
    text-align:center;
  }
  .second{
    text-align:left;
    margin:.610687rem 0;
  }
  .second span,.good-at{
    color:#61687c;
    font-size:.732824rem;
    margin-right:.610687rem;
  }
  .third{
    width:18rem;
    overflow:hidden;
    text-overflow:ellipsis;
    white-space: nowrap;
  }
  
</style>