<template>
<!-- 预约挂号第二页面 -->
  <div id="order2">
    <!-- 子组件头部 -->
    <header></header>
    <!-- 页面2下方选项卡 -->
    <!-- 医院信息卡 -->
    <div class="hospital-info">
      <div class="title">
        <h3>中国人民解放军总医院301医院</h3>
        <span class="yao">预约规则</span>
      </div>
      <div class="subtitle">
        <span class="choose">三级甲等</span>
        <span>公立医院</span>
        <span>综合医院</span>
      </div>
      <!-- 有的医院有 有的没有 -->
      <div class="more">
        <span class="mingci">全国综合昂患者好评第2名</span>
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
    <van-tree-select :items="items" :active-id.sync="activeId" :main-active-index.sync="activeIndex"/>
    <!-- vant 组件库 -->
  </div>
</template>

<script>
import Choose from './Choose'
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
      ],
      activeId:1,
      activeIndex:0,
    }
  },
  components:{
    "choose":Choose,
  },
  methods:{
    
  }
}
</script>

<style>
a{text-decoration: none;}
/* 医院信息卡样式 */
/* 除了图片以外,尽量别用绝对单位,百分比或者rem最好 */
  .hospital-info{
    height: 5rem;
    border:.0625rem solid #faf;
    display:flex;
    flex-direction: column;
    padding:15px 10px 10px 10px;
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
    font-size:12px;
    color:#83889a;
    border:1px solid #c4c5ce;
    border-radius:10px;
    height:18px;width:60px;
    text-align: center;
    line-height:18px;
  }
  .subtitle{margin:10px 0;}
  .subtitle span{
    margin-right:30px;
    font-size:14px;
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
    font-size:10px;
    color:#83889a;
    widows: 145px;;
    height:20px;
    line-height:20px;
    background-color:#e0ebfa;
  }
  .more .zhuye{
    font-size:12px;
    color:#28354c;

  }
  .large{
    font-size:12px;
    font-weight:700;
    color:#555;
  }
</style>