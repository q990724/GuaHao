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
              <span>3分钟找到三甲专家 </span>
              <span> / 提前了解病情</span>
            </div>
            <div class="second">
              <span>避免挂错科室 </span>
              <span> / 节省就医成本</span>
            </div>
          </div>
          <div class="right_price">
            <span>¥</span>
            <span class="price">9</span>
            <span>起</span>
            <van-icon name="arrow" />
          </div>
        </div>
        <div class="bottom_num">
          <span>已有</span>
          <span>363.1</span>
          <span>万名患者在</span>
          <span> 挂号前 </span>
          <span>选择诊前咨询</span>
        </div>
      </div>
    </div>
    <div class="hospital">

    </div>
      
  </div>
</template>
<script>
export default {
  data(){
    return {
      hospitalType:["综合医院","眼科医院","儿童医院","妇产科医院","肿瘤医院","耳鼻喉科医院"],
      hospitalLevel:["三甲医院","三级医院","一级医院","对外专科","对外综合","其他","二级医院"],
      hospital:[1,2,3,4],
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
}
</script>
<style scoped>
.orderby{
  height:2.5rem !important;
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
  color:#000 !important;
  
}
.bottom_num{
  text-align: left;
}
</style>