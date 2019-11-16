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
        { text: '热门地区',
          children:[
            {text:"全国"},
          ]
        }, 
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          ]
        },
        { text: '北京' ,id:1,disabled:false,children:[
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
          {text:"昌平"},{text:"顺义"},{text:"丰台"},{text:"朝阳"},{text:"海淀"},
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
