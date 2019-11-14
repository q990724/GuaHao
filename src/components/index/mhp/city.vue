<template>
  <div>
    <van-tree-select class="tree" style="margin-top:60px;"
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
    };
  },
}
</script>
<style scoped>

</style>
