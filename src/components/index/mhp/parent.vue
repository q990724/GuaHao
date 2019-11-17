<template>
  <div>
    <wytitle class="title"></wytitle>
    <!-- 手动复制搜索框 与后面的不受影响 -->
    <div class="search">
      <div>
        <div class="content">
          <img src="../../../../public/images/index/22toGuahao/gray-search.cfda5be2b31e1669e46a9bc82bf199f2.png" alt="">
          <i>搜索医院，医生，科室，疾病，药品</i>
        </div>
      </div>
    </div>
    <div class="entry_major">
      <quik></quik>
      <toGuahao></toGuahao>
    </div>
    <normal></normal>
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
.bottom{
  /* overflow-y:scroll; */
}
/* 搜索框样式 */
  .search{
  height:3.1rem;
  /* position: relative; */
  margin-top: 2.7075rem;
  margin-bottom: .625rem;
  border-bottom:.0625rem solid #eee;
  background: #fff;
  /* display: flex; */
  /* align-items: center; */
  /* top:45px; */
  }
  .search>div{
    padding:.610687rem;
  }
  .search>div>.content{
    width: 89.5%;
    height:1.9rem;
  vertical-align: middle;
    background-color: #ebecf1;
    border-radius: .9375rem;
    color:#999;
    font-size:.625rem;
    line-height: 1.9rem;
    margin-left: .9375rem;
    display: flex;
    align-items: center;
    padding-left: .625rem;
    vertical-align: middle;
  }
  .search>div>.content>img{
    width:1.125rem;
    height:1.125rem;
    margin-right: .5rem;
  }
  .search>a>.content>i{

  }
</style>
