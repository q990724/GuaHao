<template>
  <van-tabbar v-model="active" class="active_tab">
    <van-tabbar-item
      v-for="(item,index) in tabbars"
      :key="index"
      @click="tab(index,item.name)"
    >
      <span :class="currIndex == index ? active:''">{{item.title}}</span>
      <template slot="icon" slot-scope="props">
        <i :style="`background-image:url(${props.active ? item.active : item.normal});background-position:0 ${props.active ? 0 : -22}px`"></i>
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
          name: "",
          title: "健康号",
          normal: require("../../../public/images/index/tabbar/add.png"),
          active: require("../../../public/images/index/tabbar/add.png")
        },
        {
          name: "message",
          title: "消息",
          normal: "",
          active: ""
        },
        {
          name: "cart",
          title: "购物车",
          normal: "",
          active: ""
        },
        {
          name: "me",
          title: "我的",
          normal: "",
          active: ""
        }
      ]
    };
  },
   methods: {
    tab(index, val) {
      this.currIndex = index;
      this.$router.push(val)
    }
   },

}
</script>

<style scoped>
  i{
    display: inline-block;
    width: 1.5625rem;
    height: 1.25rem;
    background-repeat:  no-repeat;
    background-size: 100%; 
  }
</style>
