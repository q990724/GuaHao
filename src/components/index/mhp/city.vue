<template>
  <div>
    <mt-header class="pre_title" fixed title="选择地区">
      <router-link to="/preGuahao" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>

    <van-tree-select class="tree" style="margin-top:3rem; height:50rem"
      :items="items"
      :active-id.sync="activeId"
      :main-active-index.sync="activeIndex"
    />
  </div>
</template>
<script>
export default {
  data(){
    return {
      items:[
        { text: '热门地区',children:[
          {text:"全国",id:1,disabled:false},
          {text:"北京(自动定位)",id:2,disabled:false},
          {text:"上海",id:3,disabled:false},
          {text:"天津",id:4,disabled:false},
          {text:"广州",id:5,disabled:false},
          {text:"武汉",id:6,disabled:false},
          {text:"长沙",id:7,disabled:false},
          {text:"青岛",id:8,disabled:false},
          {text:"重庆",id:9,disabled:false},
          {text:"南京",id:10,disabled:false},
          {text:"西安",id:11,disabled:false},
          {text:"杭州",id:12,disabled:false},
          {text:"深圳",id:13,disabled:false},
          ]
        },
        { text: '北京',children:[
          {text:"昌平",id:1,disabled:false},
          {text:"顺义",id:2,disabled:false},
          {text:"丰台",id:3,disabled:false},
          {text:"朝阳",id:4,disabled:false},
          {text:"海淀",id:5,disabled:false},
          ]
        },
        { text: '上海',children:[
          {text:"不限",id:1,disabled:false},
          {text:"徐汇区",id:2,disabled:false},
          {text:"静安区",id:3,disabled:false},
          {text:"黄浦区",id:4,disabled:false},
          {text:"杨浦区",id:5,disabled:false},
          {text:"虹口区",id:6,disabled:false},
          {text:"浦东新区",id:7,disabled:false},
          {text:"闵行区",id:8,disabled:false},
          {text:"长宁区",id:9,disabled:false},
          {text:"普陀区",id:10,disabled:false},
          {text:"宝山区",id:11,disabled:false},
          {text:"松江区",id:12,disabled:false},
          {text:"嘉定区",id:13,disabled:false},
          {text:"金山区",id:14,disabled:false},
          {text:"崇明区",id:15,disabled:false},
          {text:"青浦区",id:16,disabled:false},
          {text:"奉贤区",id:17,disabled:false},
          ]
        },
        { text: '江苏',children:[
          {text:"不限",id:1,disabled:false},
          {text:"常州",id:2,disabled:false},
          {text:"无锡",id:3,disabled:false},
          {text:"扬州",id:4,disabled:false},
          {text:"南京",id:5,disabled:false},
          {text:"淮安",id:6,disabled:false},
          {text:"苏州",id:7,disabled:false},
          {text:"徐州",id:8,disabled:false},
          {text:"南通",id:9,disabled:false},
          {text:"连云港",id:10,disabled:false},
          {text:"镇江",id:11,disabled:false},
          {text:"泰州",id:12,disabled:false},
          {text:"盐城",id:13,disabled:false},
          {text:"宿迁",id:14,disabled:false},
          ]
        },
        { text: '天津',children:[
          {text:"河西区",id:1,disabled:false},
          {text:"河东区",id:2,disabled:false},
          {text:"和平区",id:3,disabled:false},
          {text:"南开区",id:4,disabled:false},
          {text:"滨海新区",id:5,disabled:false},
          {text:"红桥区",id:6,disabled:false},
          {text:"武清区",id:7,disabled:false},
          {text:"静海县",id:8,disabled:false},
          {text:"宝坻区",id:9,disabled:false},
          {text:"河北区",id:10,disabled:false},
          {text:"宁河县",id:11,disabled:false},
          ]
        },
        { text: '北京',children:[
          {text:"昌平",id:1,disabled:false},
          {text:"顺义",id:2,disabled:false},
          {text:"丰台",id:3,disabled:false},
          {text:"朝阳",id:4,disabled:false},
          {text:"海淀",id:5,disabled:false},
          ]
        },
      ],
      activeId: 1,
      activeIndex: 0,
    }
  },
  methods: {
    goback(){
      this.$router.go(-1);
    }
  },
}
</script>
<style scoped>
.pre_title{
  font-size: 1.125rem;
  line-height: 2.8125rem;
  height:2.8125rem;
  color:#000;
  background: #fff !important;
  border-bottom: .0625rem solid #eee;
}
.tree{
  height:50rem !important;
}
</style>
