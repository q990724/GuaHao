<template>
<!-- 预约挂号第二页面 -->
  <div id="order2">
    <!-- 子组件头部 -->
    <pre-title></pre-title>
    <!-- 页面2下方选项卡 -->
    <!-- 医院信息卡 -->
    <div class="hospital-info">
      <div class="title">
        <h3>{{hospital.hname}}</h3>
        <span class="yao">预约规则</span>
      </div>
      <div class="subtitle">
        <span class="choose">{{hospital.hrank}}</span>
        <span>公立医院</span>
        <span>{{hospital.hmajor}}</span>
      </div>
      <!-- 有的医院有 有的没有 -->
      <div class="more">
        <span class="mingci">{{hospital.comment_msg}}</span>
        <router-link class="zhuye" to="#">医院主页<span class="large">&gt;</span></router-link>
      </div>
    </div>
    <!-- 小组件   选择科室组件 -->
    <choose></choose>
    <!-- 搜索框 子组件 -->
    <form action="/">
      <van-search v-model="value" placeholder="搜索医生、疾病、科室、查看本院医生" shape="round"/>
    </form>
    <!-- 选择组件 -->
    <van-tree-select @click-item="next" :items="items" :active-id.sync="activeId" :main-active-index.sync="activeIndex"/>
    <!-- vant 组件库 -->
  </div>
</template>

<script>
import preTitle from '../../mhp/preTitle'
import Choose from './Choose'
import config from "../../../../assets/js/config.js"
export default {
  data(){
    return {
      value:"",
      // 选择组件的样式
      items:[
        {text:"推荐科室",children:[
          {text:"二鼻咽喉头颈外科",id:1,disabled:false},
          {text:"骨科",id:2,disabled:false},
          {text:"内分泌科",id:3,disabled:false},
          {text:"肾脏病科",id:4,disabled:false},
          {text:"妇产科",id:5,disabled:false},
          {text:"口腔科",id:6,disabled:false},
          {text:"消化内科",id:7,disabled:false},
          {text:"皮肤科",id:8,disabled:false},
          {text:"心血管内科",id:9,disabled:false},
        ]},
        {text:"内科",children:[
          {text:"内分泌科",id:1,disabled:false},
          {text:"血液病科",id:2,disabled:false},
          {text:"消化内科",id:3,disabled:false},
          {text:"心血管内科",id:4,disabled:false},
          {text:"风湿科",id:5,disabled:false},
          {text:"神经内科",id:6,disabled:false},
          {text:"胃脏病科",id:7,disabled:false},
          {text:"呼吸内科",id:8,disabled:false},
          {text:"高血压门诊",id:9,disabled:false},
          {text:"针灸科",id:10,disabled:false},
          {text:"发热门诊",id:11,disabled:false},
          {text:"老年医学研究所",id:12,disabled:false},
        ]},
        {text:"外科",children:[
          {text:"肝胆外科",id:1,disabled:false},
          {text:"心血管外科",id:2,disabled:false},
          {text:"神经外科",id:3,disabled:false},
          {text:"血管外科",id:4,disabled:false},
          {text:"整形修复科",id:5,disabled:false},
          {text:"胃肠肿瘤外科",id:6,disabled:false},
          {text:"乳腺肿瘤外科",id:7,disabled:false},
          {text:"肝胆肿瘤外科",id:8,disabled:false},
        ]},
        {text:"骨科",children:[
          {text:"骨科",id:1,disabled:false},
        ]},
        {text:"妇产科",children:[
          {text:"妇产科",id:1,disabled:false},
        ]},
        {text:"儿科",children:[
          {text:"小儿外科",id:1,disabled:false},
          {text:"小儿骨科",id:2,disabled:false},
          {text:"小儿内科",id:3,disabled:false},
        ]},
        {text:"皮肤性病科",children:[
          {text:"激光科",id:1,disabled:false},
          {text:"皮肤科",id:2,disabled:false},
        ]},
        {text:"眼科",children:[
          {text:"眼科",id:1,disabled:false},
        ]},
        {text:"耳鼻咽喉科",children:[
          {text:"耳鼻咽喉科",id:1,disabled:false},
        ]},
        {text:"眼科",children:[
          {text:"眼科",id:1,disabled:false},
        ]},
        {text:"口腔科",children:[
          {text:"口腔科",id:1,disabled:false},
        ]},
        {text:"中医科",children:[
          {text:"中医科",id:1,disabled:false},
        ]},
      ],
      activeId:1,
      activeIndex:0,
      hospital:{},
      hid:0
    }
  },
  components:{
    "choose":Choose,
    "preTitle":preTitle,
  },
  methods:{
   next(data){ 
    this.$router.push({name:"order3",params:{text:data.text,hid:this.hid}});
   }  
  },
  created(){
    var hid=this.$route.params.hid;
    this.hid=hid
    config.axios.get(
      `/hospitals/hospitalsDetails/${hid}`
    ).then(res=>{
      this.hospital=res.data.data;
    }).catch(err=>{
      console.log(err)
    })
  }
}
</script>

<style>
a{text-decoration: none;}
/* 医院信息卡样式 */
  .hospital-info{
    height: 5rem;
    display:flex;
    flex-direction: column;
    padding:3.358779rem .916031rem .610687rem .916031rem;
    background-color:#fff;
  }
  .title{
    display:flex;
    justify-content: space-between;
  }
  .title h3{
    margin:0;
    display:inline;
  }
  .title .yao{
    font-size:.732824rem;
    color:#83889a;
    border:1px solid #c4c5ce;
    border-radius:.610687rem;
    height:1.099237rem;width:3.664122rem;
    text-align: center;
    line-height:1.099237rem;
  }
  .subtitle{margin:.610687rem 0;}
  .subtitle span{
    margin-right:1.832061rem;
    font-size:.854962rem;
  }
  .subtitle>.choose{
    color:rgba(255,0,0,.8);
  }
  .subtitle span:nth-child(2),.subtitle span:nth-child(3){
    color:#83889a;
  }
  .more{
    display:flex;
    justify-content: space-between;
  }
  .more .mingci{
    font-size:.610687rem;
    color:#83889a;
    widows: 8.854962rem;
    height:1.221374rem;
    line-height:1.221374rem;
    background-color:#e0ebfa;
  }
  .more .zhuye{
    font-size:.732824rem;
    color:#28354c;

  }
  .large{
    font-size:.732824rem;
    font-weight:700;
    color:#555;
  }
/* 组件库样式 */
.van-tree-select__nav{
  overflow-y:auto !important;
}
.van-tree-select{
  height:27.480916rem !important;
}
.van-tree-select__item{
  font-weight:500 !important;
}
</style>