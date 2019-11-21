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
          <span>{{day.lastWeek}}</span>
          <h4>{{day.month}}.{{day.lastDay}}</h4>
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
        <div class="order" v-for="(doc,i) of docs" :key="i">
          <!-- 医生图片 -->
          <div class="doc-img">
            <img src="../../../../../public/images/index/gzh/doc.png">
          </div>
          <!-- 医生预约信息 -->
          <!-- 点击整个div 能够跳转 -->
          <div class="doc-info" >
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
      days:[],
      docs:[1,2,3,4,5,6,7,8,9,10],
    }
  },
  methods:{
    created() {
      this.getDate();
    },
    getDate(){
      var year = new Date().getFullYear();
      var nowMon = new Date().getMonth() + 1;//获取今天月份
      var nowDay = new Date().getDate();//当前今天日期
      var nowWeek = new Date().getDay();//获取当前星期

      var isRun = false;//是否为闰年,默认为false

      //判断当前年份是否为闰年
      if(year%4==0&&year%100!=0||year%400==0){
        isRun = true;
  　　}else{
        isRun = false
  　　}

      //1 3 5 7 8 10 12 :31
      //4 6 9 11 : 30
      //2 ? 29 : 28

      //计算当前月份总天数
      function computedMonthDay(now){
        if(now == 1 || now == 3 || now == 5 || now == 7 || now == 8 || now == 10 || now == 12){
          return 31
        }else if(now == 2){
          return isRun ?  29 : 28;
        }else{
          return 30;
        }
      }

      //修改星期的格式
      function changeWeekFormat(week){
        switch(week){
          case 1:{
            return "一"
            break;
          }
          case 2:{
            return "二"
            break;
          }
          case 3:{
            return "三"
            break;
          }
          case 4:{
            return "四"
            break;
          }
          case 5:{
            return "五"
            break;
          }
        }
      }

      var monthDays = computedMonthDay(nowMon);//当前月的总天数
      console.log(`今年${isRun ? "是闰年" : "不是闰年"},${nowMon}月的总天数为:${monthDays},星期:${nowWeek}`);


      var lastDays = [];//后面的十五天
      var lastWeek;
      var lastDay;
      for(var i = 1; i <= monthDays; i++){
        lastWeek = (nowWeek + i) % 7;
        lastDay = nowDay + i;
        if(lastWeek == 0 || lastWeek == 6){
          continue;
        }
        if(lastDay >= monthDays){
          var lastMonthDays = computedMonthDay(nowMon+1);
          for(var j = 1; j <= lastMonthDays; j++){
            lastDay = j;
            lastWeek = (nowWeek + j) % 7;
            if(lastWeek == 0 || lastWeek == 6){
              continue;
            }
            lastDays.push({month : nowMon+1,lastDay,lastWeek :"星期" + changeWeekFormat(lastWeek)});
              if(lastDays.length == 15){
              break;
            } 
          }
          break;
        }else{
          lastDays.push({month : nowMon,lastDay,lastWeek :"星期" +  changeWeekFormat(lastWeek)});
          if(lastDays.length == 15){
            break;
          }        
        }
        
      }

      console.log(lastDays);
      this.days = lastDays;
      console.log(this.days);
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
.van-nav-bar__title{
  z-index:6;
}
/* 选择时间样式 */
  .choose-all{
    border:.04266667rem solid #e3e3e3;
    border-right:0rem solid ;
    width:100%;
    height:4rem;
    /* position:fixed; */
    top:3rem;
    /* padding-top:2.80916rem; */
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
    /* position:fixed; */
    top:2.80916rem;
    left:1rem;
    width:2rem;
    z-index:999;
    text-align:left;
    font-size:.732824rem;
    /* padding-top:1.1rem; */
    
  }
  
  
  .can-choose-date{
    padding-left:3rem;
    text-align:center;
    width:100%;
    height:3rem;
    display:flex;
    flex-wrap: nowrap;
    /* position:fixed; */
    left:3rem;
    /* top:2.80916rem; */
    overflow-x:auto;
    overflow-y:hidden;
    white-space: nowrap;
    justify-content: space-between;
    z-index:1;
  }
  .date{
    padding:.5rem .610687rem ;
    height:2rem;
  }
  .date span:first-child{
    font-size:.732824rem;
  }
  .buxian{
    z-index:7;
    padding-top: 2rem;
    display:flex;
  }



/* ddd */
  .van-dropdown-menu{
    /* padding-top: 9.5rem; */
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
    /* flex-direction: column; */
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
    width:3rem;
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