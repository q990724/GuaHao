<template>
  <div>
    <wytitle class="title"></wytitle>
    <!-- 复制组件 -->
    <div class="search">
      <a href="">
        <div class="content">
          <img src="../../../../public/images/index/22toGuahao/gray-search.cfda5be2b31e1669e46a9bc82bf199f2.png" alt="">
          <i>搜索医院，医生，科室，疾病，药品</i>
        </div>
      </a>
    </div>
    <div class="entry_major">
      <quik></quik>
      <toGuahao></toGuahao>
    </div>
    <normal></normal>
    <br><br><br>
    <br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <div class="bottom"></div>
  </div>
</template>
<script>
import wytitle from "./wytitle";

import quik from "./quik";
import toGuahao from "./toGuahao";
import normal from "./normal";

export default {
  data(){
    return {

    }
  },
  components:{
    "wytitle":wytitle,
    "quik":quik,
    "toGuahao":toGuahao,
    "normal":normal
  },
  methods: {

  },
}
</script>
<style scoped>
.entry_major{ 
  display: flex;
  justify-content: space-around;
}

/* 搜索栏样式 */
.search{
  height:2.5rem;
  /* position: relative; */
  margin-top: 3.2075rem;
  margin-bottom: .625rem;
  border-bottom:.0625rem solid #eee;
  /* display: flex; */
  /* align-items: center; */
  /* top:45px; */
}
.search>a>.content{
  width: 89.5%;
  height:1.9rem;
  background-color: #ebecf1;
  border-radius: .9375rem;
  color:#999;
  font-size:.625rem;
  line-height: 2rem;
  margin-left: .9375rem;
  display: flex;
  align-items: center;
  padding-left: .625rem;
}
.search>a>.content>img{
  width:1.125rem;
  height:1.125rem;
  margin-right: .5rem;
}

</style>
