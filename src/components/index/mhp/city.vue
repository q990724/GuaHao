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
          {text:"广州",id:4,disabled:false},
          {text:"武汉",id:5,disabled:false},
          {text:"长沙",id:6,disabled:false},
          {text:"青岛",id:7,disabled:false},
          {text:"重庆",id:8,disabled:false},
          {text:"南京",id:9,disabled:false},
          {text:"西安",id:10,disabled:false},
          {text:"杭州",id:11,disabled:false},
          {text:"深圳",id:12,disabled:false},
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
        { text: '北京',children:[
          {text:"昌平",id:1,disabled:false},
          {text:"顺义",id:2,disabled:false},
          {text:"丰台",id:3,disabled:false},
          {text:"朝阳",id:4,disabled:false},
          {text:"海淀",id:5,disabled:false},
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
        { text: '北京',children:[
          {text:"昌平",id:1,disabled:false},
          {text:"顺义",id:2,disabled:false},
          {text:"丰台",id:3,disabled:false},
          {text:"朝阳",id:4,disabled:false},
          {text:"海淀",id:5,disabled:false},
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
