<template>
  <div>
    <div class="top">
      <mt-header title="预约挂号">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
      <div class="top_bg">
        <router-link to="">
          <img src="../../../../public/images/me/me-header/qZY78470658.png">
        </router-link>
        <div class="doc_msg">
          <div class="main_msg">
            <span class="name">小阿砍</span>
            <span class="type">主治医师/教授</span>
          </div>
          <div class="details">
            <span  class="order_count">预约量：<i>5455</i></span>
            <span  class="score">评分：<i>9.5</i></span>
          </div>
          <div class="skill">
            <span>骨肿瘤</span>
            <span>关节炎</span>
            <span>骨质增生</span>
            <span>骨瘤</span>
          </div>
        </div>
      </div>
      <div class="reg">
        <router-link to="">预约规则 &gt;</router-link>
      </div>
    </div>
    <div class="content">
      <div>
        <van-collapse v-model="activeNames">
          <van-collapse-item name="1">
            <div slot="title" class="hospital">
              <i></i>
              <div class="h_name">
                <p><b>上海交通大学医学院附属瑞金医院</b>-门诊骨科</p>
              </div>
              <span class="isOrder">可预约</span>
            </div>
            <div class="down_content" :style="`height:${downHeight}rem`">
              <div class="left">
                本月
              </div>
              <ul class="right">
                <li>
                  <div>
                    <p class="time">2019-11-21 周四 下午 <b>2天后</b></p>
                    <p class="platform">专家门诊-[平台] <b>50.00元</b></p>
                  </div>               
                  <van-button :round="true" type="info">预约</van-button>
                </li>
                <li>
                  <div>
                    <p class="time">2019-11-21 周四 下午 <b>2天后</b></p>
                    <p class="platform">专家门诊-[平台] <b>50.00元</b></p>
                  </div>               
                  <van-button :round="true" type="info">预约</van-button>
                </li>
                <li>
                  <div>
                    <p class="time">2019-11-21 周四 下午 <b>2天后</b></p>
                    <p class="platform">专家门诊-[平台] <b>50.00元</b></p>
                  </div>               
                  <van-button :round="true" type="info">预约</van-button>
                </li>
                <li>
                  <div>
                    <p class="time">2019-11-21 周四 下午 <b>2天后</b></p>
                    <p class="platform">专家门诊-[平台] <b>50.00元</b></p>
                  </div>               
                  <van-button :round="true" type="info">预约</van-button>
                </li>
              </ul>
            </div>
            <div class="up" @click="pull">
              {{pullAll}}<van-icon :name="`${iconName}`" />
            </div>
          </van-collapse-item>
        </van-collapse>
      </div>
    </div>
    <div class="online">
      <p class="circle"></p>
      <div class="d_name">
        <p><b>张伟滨医生线上门诊</b>-门诊骨科</p>
        <p><em>15</em>名患者预约就诊</p>
        <p><span>不限地域</span></p>
      </div>
      <van-button :round="true" type="info">预约</van-button>
    </div>
    <div class="on_serve">
      <p>在线服务</p>
      <div class="alert">
        <img src="../../../../public/images/index/appointment/MfF103103849.webp">
        <div>
          <p>开通排班通知</p>
          <p>医生放号实时通知</p>
        </div>
      </div>
    </div>
    <van-cell is-link>
      <template slot="title">
        <span class="custom-title">患者评价(329)</span>
    </template>
    </van-cell>
    <div class="impress">
      <p>
        患者对医生的主要印象是：经验丰富，热情亲切
      </p>
    </div>
    <div class="commit">
      <p>
        <span>吴凡</span>
        <van-rate v-model="stars" />
        <span>2019-10-22</span>  
      </p>
      <p><span>确认疾病：</span><b>骨肿瘤</b></p>
      <p><span>治疗方式：</span><b>手术</b></p>
      <div>
        
      四年前张主任给我做的手术，每年都来复查。张主任医术精湛临床经验非常丰富，给病患很大的安全感。很庆幸当初选择了瑞金医院选择了张主任诊断治疗
    
      </div>
    </div>
  </div>
</template>
<style scoped>
.mint-header {
  background: #fff;
  font-size: 1.1rem;
  color: #28354c;
  width: 26rem;
  position: fixed;
  top: 0;
}
.top{
  position: relative;
}
.top_bg{
  margin-top:1.687023rem;
  height:9.465649rem;
  background:url("../../../../public/images/index/appointment/rMs78715832.png");
  background-size:cover;
  display: flex;
  padding-top:2.137405rem;
  box-sizing: border-box;
}
.top_bg a{
  margin:0 1.221374rem;
  display: block;
  width:3.664122rem;
  height:3.664122rem;
  box-sizing: border-box;
}
.top_bg a img{
  width: 100%;
  border-radius: 50%;
  border: .122137rem solid #fff;
}
.top_bg .doc_msg{
  color:#fff;
  margin-top:.305344rem;
}
.doc_msg .name{
  font-size: 1.221374rem;
  margin-right:.610687rem;
}
.doc_msg .type{
  font-size: .854962rem;
}
.doc_msg .order_count i,.doc_msg .score i{
  font-size: 1.221374rem;
}
.doc_msg .order_count{
  margin:.610687rem 0;
  margin-right: .610687rem;
  font-size: .854962rem;
}
.doc_msg .score{
  font-size: .854962rem;
}
.doc_msg .skill span{
  font-size:.732824rem;
  line-height:.732824rem;
  padding:.305344rem .48855rem;
  background: hsla(180,5%,96%,.3);
  display: inline-block;
  border-radius: .610687rem;
}
.doc_msg .skill span:not(:first-child){
  margin-left:.48855rem;
}
.main_msg,.details,.skill{
  height:1.832061rem;
}
.skill{
  margin-top:.48855rem;
}
.reg a{
  display: inline-block;
  font-size: .854962rem;
  color:#fff;
  position: absolute;
  top:1.541985rem;
  right:0;
  background-color: #7593ce;
  border: .04266667rem solid #8ba6e4;
  padding:.48855rem 0 .48855rem .610687rem;
  border-radius:.610687rem 0 0 .610687rem;
}
.van-cell >>> .van-cell__right-icon{
  margin-top:.977099rem;  
}
.hospital>i{
  content: "";
  width:.305344rem;
  height:.305344rem;
  background:#3278ee;
  border-radius: 50%;
  margin-top:-0.916031rem;
}
.hospital{
  display: flex;
  align-items: center;
}
.hospital .h_name{
  width:80%;
  margin-left: .610687rem;
}
.hospital .h_name p b{
  font-size:1.099237rem;
  font-weight: 600;
  color:#5e616b;
}
.hospital .isOrder{
  display: inline-block;
  background: #fff;
  font-size: .854962rem;
  line-height:.854962rem;
  padding:.122137rem .244275rem;
  color: #589bff;
  border: .04266667rem solid #3f86ff;
  border-radius: .244275rem;
}
.van-cell__right-icon{
  margin-top:.793893rem;
}
.down_content{
  display: flex;
  background:#ebf7ed;
  overflow: hidden;
  transition: 0.6s;
}
.down_content .right{
  width:98%;
  background: #f8f8f8;
}
.down_content .right li{
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding:.916031rem 0;
  border-bottom: .04266667rem solid #ebecf1;
}
.down_content .left{
  font-size:.854962rem;
  font-weight: 700;
  color:#2b313d;
  text-align: center;
  background:#ebf7ed;
  width:1.343511rem;
  height:100%;
}
.down_content .right li .time{
  font-size: .977099rem;
  color:#28354c;
}

.down_content .right li .time b{
  font-size: .732824rem;
  background: #ebecf1;
  color: #83889a;
  padding:.183206rem;
  border-radius: .305344rem;
}
.down_content .right li .platform b{
    color: #ff695c;
    font-weight: 400;
}
.van-button--normal{
  width:4.030534rem;
  height:2.015267rem;
  font-size: .854962rem;
  line-height: .854962rem;
  text-align: center;
  padding:.244275rem .610687rem;
}
.up{
  background:#f8f8f8;
  text-align: center;
  color:#3f86ff;
  font-size:.977099rem;
}
.van-icon-arrow-up:before{
 position: relative;
 top:.122137rem;
}
.d_name{
  text-align: left;
  color:#5e616b;
  position: relative;
  left:-1.832061rem;
}
.d_name>p:first-child>b{
  font-size: 1.099237rem;
  font-weight: 600;
}
.d_name em {
  color:#589bff;
}
.d_name>p:nth-child(2){
    margin:.305344rem;
    margin-left: -0.183206rem;
}
.online{
  background: #fff;
  padding:.977099rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-top: .122137rem solid #ccc;
}
.online .circle{
    content: "";
    width: .305344rem;
    height: .305344rem;
    background: #3278ee;
    border-radius: 50%;
}
.d_name>p:last-child>span::before{
  content: "";
  display: inline-block;
  height:.854962rem;
  width: .854962rem;
  background: url("../../../../public/images/index/appointment/yCt109547556.png") no-repeat 0 0;
  background-size:.854962rem;
  margin-right: .17066667rem;
}
.d_name>p:last-child>span{
  font-size: .854962rem;
}
.on_serve{
  font-size: .854962rem;
  padding:.732824rem;
  background: #fff;
  margin-top: .610687rem;
}
.on_serve>p{
  color:#28354c;
  margin-bottom: 1.221374rem;
}
.on_serve .alert{
  display: flex;
  align-items: center;
}
.on_serve img{
  width:1.832061rem;
  height:1.832061rem;
}
.alert>div{
  margin-left: .916031rem;
}
.alert>div>p:nth-child(2){
  color:#83889a;
  margin-top: .183206rem;
}
.van-cell{
  margin-top: .610687rem;
  padding:.305344rem .610687rem;
}
.van-cell span{
  color:#83889a;
  position: relative;
  top:.610687rem;
}
.van-icon-arrow:before{
  position: relative;
  top:-0.305344rem;
}
.impress{
  background:#fff;
  color:#83889a;
  font-size: .977099rem;
  padding:1rem 1rem;
}
.commit {
  background: #fff;
  border-top: .061069rem solid #ccc;
  padding:.610687rem .610687rem;
}
.commit span{
  color:#83889a;
  font-size: .854962rem;
}
.commit b{
  color:rgb(40, 53, 76);
  font-size: .977099rem;
  font-weight: 400;
}
.commit>p:first-child{
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.commit>p:not(:first-child){
  margin-top:.305344rem;
}
.commit>div{
  margin-top:5px;
}
</style>
<script>
export default {
   data() {
    return {
      activeNames: ['1'],
      downHeight:8.6,
      iconName:"arrow-down",
      pullAll:"显示全部排班",
      stars:5
    }
  },
  methods:{
    pull:function(){
      if(this.downHeight==8.6&&this.iconName=="arrow-down"){
        this.downHeight=17.2;
        this.iconName="arrow-up";
        this.pullAll="收起排班";
      }else{
        this.downHeight=8.6;
        this.iconName="arrow-down";
        this.pullAll="显示全部排班";
      }
    }
  }
}
</script>