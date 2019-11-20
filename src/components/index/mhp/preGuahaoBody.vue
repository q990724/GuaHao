<template>
  <div class="container">
    <van-dropdown-menu class="orderby">
      <van-dropdown-item class="order_c" v-model="value1" :options="option1" />
      <van-dropdown-item v-model="value2" :options="option2"  >
        <van-collapse v-model="activeNames">
          <van-collapse-item title="医院类型" name="1">
            <button class="stBtn" v-for="(t,i) of hospitalType" :key="i">{{t}}</button>
          </van-collapse-item>
          <van-collapse-item title="医院等级" name="2">
            <button class="stBtn" v-for="(l,i) of hospitalLevel" :key="i">{{l}}</button>
          </van-collapse-item>
        </van-collapse>
      </van-dropdown-item>
    </van-dropdown-menu>
    <div class="preAsk">
      <div class="l_img">
        <img src="../../../../public/images/index/22toGuahao/QHY73129938.webp" alt="">
      </div>
      <div class="r_details">
        <div class="t_title">
          <span class="p_title">诊前咨询</span>
          <van-tag type="warning" style="margin-right:10px; padding:0px 4px; background:rgb(254 183 15)">快</van-tag>
          <van-tag style="margin-right:10px; padding:0px 4px; background:rgb(2 208 109)" type="success">安心</van-tag>
        </div>
        <div class="middle">
          <div class="left_ask">
            <div class="first">
              <span class="subtitle">3分钟找到三甲专家 </span>
              <span class="subtitle"> / 提前了解病情</span>
            </div>
            <div class="second">
              <span class="subtitle">避免挂错科室 </span>
              <span class="subtitle"> / 节省就医成本</span>
            </div>
          </div>
          <div class="right_price">
            <span class="pri_con">¥</span>
            <span class="price">9</span>
            <span class="pri_begin">起</span>
            <van-icon class="right_arrow" name="arrow" />
          </div>
        </div>
        <div class="bottom_num">
          <span class="con">已有</span>
          <span class="num">363.1</span>
          <span class="con">万名患者在</span>
          <span class="num"> 挂号前 </span>
          <span class="con">选择诊前咨询</span>
        </div>
      </div>
    </div>
    <div class="hospital" @click="todetail" v-for="(h,i) of hospital" :key="i">
      <div class="hos">
        <div class="left_img">
          <img src="../../../../public/images/index/22hospital/c7m2954342.webp" alt="">
        </div>
        <div class="right_title">
          <p class="hos_name">中国人民解放军总医院301医院</p>
          <div class="hos_est">
            <span class="hos_level">三级甲等</span>
            <span class="hos_type">综合医院</span>
          </div>
          <span class="hos_con">全国综合榜患者好评第2名</span>
        </div> 
      </div>
    </div>
    <!-- 轮播广告 -->
    <van-swipe class="lunbo"  :autoplay="3000" indicator-color="white">
      <van-swipe-item>
        <img src="../../../../public/images/index/22carousel/h-3.4 预约挂号轮播banner 750-240.webp" alt="">
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../../public/images/index/22carousel/h-3.4.1-750-240 (1).webp" alt="">
      </van-swipe-item>
      <van-swipe-item>
        <img src="../../../../public/images/index/22carousel/750-192.webp" alt="">
      </van-swipe-item>
    </van-swipe>
    <div class="hospital" v-for="(h,i) of hospital" :key="i+4">
      <div class="hos">
        <div class="left_img">
          <img src="../../../../public/images/index/22hospital/c7m2954342.webp" alt="">
        </div>
        <div class="right_title">
          <p class="hos_name">中国人民解放军总医院301医院</p>
          <div class="hos_est">
            <span class="hos_level">三级甲等</span>
            <span class="hos_type">综合医院</span>
          </div>
          <span class="hos_con">全国综合榜患者好评第2名</span>
        </div> 
      </div>
    </div>
    <!-- 底部提示 -->
    <div class="more">
      <div class="nomore">没有更多了...</div>
      <div class="helpyou"> 
        <span>找不到想要的结果？看病助手</span>
        <span class="gohelp">来帮您~</span>
        <van-icon class="clo" name="cross" />
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      images: [
        '../../../../public/images/index/22carousel/h-3.4 预约挂号轮播banner 750-240.webp',
        '../../../../public/images/index/22carousel/h-3.4.1-750-240 (1).webp',
        "../../../../public/images/index/22carousel/750-192.webp"
      ],
      hospitalType:["综合医院","眼科医院","儿童医院","妇产科医院","肿瘤医院","耳鼻喉科医院"],
      hospitalLevel:["三甲医院","三级医院","一级医院","对外专科","对外综合","其他","二级医院"],
      hospital:[1,2,3,4],
      index:0,
      value1: 0,
      value2: 'a',
      activeNames: ['1'],
      option1: [
        { text: '综合排序', value: 0 },
        { text: '离我最近', value: 1 },
        { text: '患者评价数', value: 2 }
      ],
      option2: [
        { text: '筛选', value: 'a' },
      ]
    }
  },
  methods:{
    todetail(){
      this.$router.push("/Order2");
    }
  },
}
</script>
<style scoped>
.container{
  background: #fff;
}
.orderby{
  /* height:2.5rem !important; */
}
.stBtn{
  border:0;
  border-radius: .8355rem;
  background-color: #eee;
  font-size: .875rem;
  margin-right: .625rem;
  margin-bottom: .625rem;
  padding:.3125rem .625rem;
  
}
.preAsk{
  height: 5rem;
  border-bottom: .0625rem solid #eee;
  display: flex;
  padding: .9375rem .625rem;
}
span{
  font-size: .75rem;
}
.preAsk>.l_img>img{
  width:4.5rem;
  height:3.375rem;
  margin-right: .625rem;
}
.r_details{
  width:18.6875rem;
}
.middle{
  display: flex;
  justify-content: space-between;
  margin-top:.3125rem;
  text-align: left;
}
.t_title{
  text-align: left;
}
.p_title{
  font-size: 1.125rem;
  font-weight: 600;
  margin:0 .625rem 0 0;
}
van-tag{
  color:rgb(97,104,124) !important;
  
}
.bottom_num{
  text-align: left;
}
.subtitle{
  color:rgb(97,104,124);
}
.con{
  color:rgb(166,168,182);
}
.num{
  color:#ff695c;
  font-weight: bold;
}
.pri_con{
  font-size: 1.099237rem;
  color:#ff695c;
}
.price{
  font-size: 1.865649rem;
  font-weight: bold;
  color:#ff695c;
}
.pri_begin{
  color:#ff695c;
}
.hospital{
  height:5.679389rem;
  text-align: left;
  border-bottom: .061069rem solid #eee;
}
.hos{
  display: flex;
  padding: .916031rem .610687rem;
}
.left_img>img{
  width:4.885496rem;
  height:3.664122rem;
  border-radius: .205344rem;
}
.right_title{
  width:18.320611rem;
  margin-left:.610687rem;
}
.hos_name{
  font-size:.884962rem;
  font-weight: bold;
  margin-bottom: .205344rem;
}
.hos_est{
  text-align: left;
  margin-bottom: .205344rem;
}
.hos_level{
  color:#ff695c;
  margin-right: .48855rem;
}
.hos_type{
  color:rgb(97,104,124);
}
.hos_con{
  font-size:.754962rem;
  text-align: left;
  color:#707c93;
  background: #e0ebfa;
  padding: .122137rem;
}
.lunbo{
  height:8.061069rem;
}
.lunbo img{
  width:100%;
  height:8.061069rem;
}
.more{
  height:5.10687rem;
  background: #eee;
  padding: .610687rem .610687rem;
  display: flex;
  
}
.more>.nomore{
  color:#aaa;
  height:1.832061rem;
  font-size:.732824rem;
  padding:.021374rem 0rem;
  text-align: center;
}
.helpyou{
  background: #fff;
  width:80%;
  height:2.442748rem;
  margin:0 auto;
  border-radius: 1.221374rem;
  line-height: 2.442748rem;
  text-align: center;
}
.gohelp{
  color:#fff;
  font-weight: bold;
  background: #3f86ff;
  padding:.305344rem;
  border-radius: .916031rem;
  margin-left:.610687rem;
}
.clo{
  margin-left:1.832061rem;
}
.right_arrow{
  position:unset;
}
</style>