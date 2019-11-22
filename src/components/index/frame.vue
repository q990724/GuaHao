<template>
  <van-tabbar v-model="active" class="active_tab">
    <van-tabbar-item
      v-for="(item,index) in tabbars"
      :key="index"
      @click="tab(index,item.name)"
    >
      <span :class="currIndex == index ? active:''">{{item.title}}</span>
      <template slot="icon" slot-scope="props">
        <i :style="`background-image:url(${props.active ? item.active : item.normal});background-position:0 ${props.active ? -25 : 0}px`"></i>
      </template>
    </van-tabbar-item>
  </van-tabbar>
</template>


<script>

export default {
  name: "tabbar",
  data() {
    return {
      currIndex: 0,
      active: 0,
      tabbars: [
        {
          name: "index",
          title: "专医",
          normal: require("../../../public/images/index/icon-index.png"),
          active: require("../../../public/images/index/icon-index.png")
        },
        {
          name: "jkh",
          title: "健康号",
          normal: require("../../../public/images/index/icon-yyt.png"),
          active: require("../../../public/images/index/icon-yyt.png")
        },
        {
          name: "find",
          title: "发现",
          normal: require("../../../public/images/index/icon-find.png"),
          active: require("../../../public/images/index/icon-find.png")
        },
        {
          name: "me",
          title: "我",
          normal: require("../../../public/images/index/icon-mine.png"),
          active: require("../../../public/images/index/icon-mine.png")
        }
      ]
    };
  },
  props:["frameName"],
   methods: {
    tab(index, val) {
      this.currIndex = index;
      this.$router.push(val)
    }
   },
  created(){
    this.active=this.frameName;
  }
}
</script>

<style scoped>
  i{
    display: inline-block;
    width: 1.526718rem;
    height: 1.526718rem;
    background-repeat:  no-repeat;
    background-size: 100%; 
  }
</style>
