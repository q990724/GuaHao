<template>
  <div id="bottom-bar">
    <!-- 底部导航栏 -->
    <mt-tabbar class="tabbar" fixed v-model="active">
      <mt-tab-item id="zy">
        <div class="active first" slot="icon"></div>
        专医
      </mt-tab-item>
      <mt-tab-item id="dh">
        <div slot="icon" class="second"></div>
        导航
      </mt-tab-item>
      <mt-tab-item id="jkh">
        <div slot="icon" class="third"></div>
        健康号
      </mt-tab-item>
      <mt-tab-item id="find">
        <div slot="icon" class="fourth"></div>
        发现
      </mt-tab-item>
      <mt-tab-item id="me">
        <div slot="icon" class="fifth"></div>
        我
      </mt-tab-item>
    </mt-tabbar>
    <!-- 切换面板 和底部导航栏一起用 -->
    <mt-tab-container v-model="active">
      <mt-tab-container-item id="zy">
        <!-- 首页Bottom组件 -->
        <bottom></bottom>
      <!-- <mt-cell v-for="n in 10" title="tab-container 1"></mt-cell> -->
      </mt-tab-container-item>
      <mt-tab-container-item id="xx">
      </mt-tab-container-item>
      <mt-tab-container-item id="jkh">
      </mt-tab-container-item>
      <mt-tab-container-item id="find">
      </mt-tab-container-item>
      <mt-tab-container-item id="me">
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
import Bottom from './Bottom'
export default {
  data(){
    return {
      active:"zy",
    }
  },
  components:{
    "bottom":Bottom,
  },
}
</script>
<style scoped>
.mint-tab-item-icon>.active.first{
  background:url("../../../../public/images/index/icon-index.png") no-repeat 0 0;
  background-position:0 .125rem;
  background-size:100%;
}
.mint-tab-item-icon>.second{
  background:url("../../../../public/images/index/tabbar/2.png")no-repeat 0 0;
  background-size:85%;
  background-position:.1875rem 0rem;
}
.mint-tab-item-icon>.third{
  background:url("../../../../public/images/index/tabbar/add.png")no-repeat 0 0;
  background-size:85%;
  background-position:.1875rem .1875rem;
}
.mint-tab-item-icon>.fourth{
  background:url("../../../../public/images/index/tabbar/footer-sprite.png")no-repeat 0 0;
  background-size:100%;
  background-position:.0625rem -4.375rem;
}
.mint-tab-item-icon>.fifth{
  background:url("../../../../public/images/index/tabbar/icon-mine.png")no-repeat 0 0;
  background-size:70%;
  background-position:.25rem .3125rem;
}
</style>
