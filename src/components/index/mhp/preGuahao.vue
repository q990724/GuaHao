<template>
  <div class="content">
    <preTitle></preTitle>
    <wysearch></wysearch> 
    <div class="addr" @click="goCity">北京</div>
    <div class="four">
      <ul>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/01.预约挂号-医院列表+copy+8@2x.png" alt="">
          </div>
          <span>三甲体检</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/疑难病门诊.png" alt="">
          </div>
          <span>报告解读</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/看病助手.png" alt="">
          </div>
          <span>看病助手</span>
        </li>
        <li class="sanjia">
          <div>
            <img src="../../../../public/images/index/22toGuahao/group+9@2x.png" alt="">
          </div>
          <span>医院排行榜</span>
        </li>
      </ul>
    </div>
    <preGuahaoBody></preGuahaoBody>
  </div>
</template>
<script>
import preTitle from "./preTitle";
import wysearch from "./wysearch";
import preGuahaoBody from "./preGuahaoBody";
export default {
  data() {
    return {
      
    };
  },
  methods: {
    goCity(){
      this.$router.push("/city")
    }
  },
  components:{
    "preTitle":preTitle,
    "wysearch":wysearch,
    "preGuahaoBody":preGuahaoBody,
  },
}
</script>
<style scoped>
.four{
  width:100%;
  height:5.275rem;
  border-bottom: .0625rem solid #eee;
  background: #fff;
  margin-bottom: .5125rem;
  /* margin-top:-0.055rem; */
}
.four>ul{
  display: flex;
  justify-content: space-between;
  text-align: center;
  padding-top:.210687rem;
}
.four>ul>li{
  width:5.859375rem;
  height:5.875rem;
}
.four>ul>li>div>img{
  width:3.25rem;
  height:3.25rem;
}
.four>ul>li>span{
  font-size: .75rem;
}
.addr{
  /* position:relative;
  top:-2.775rem;
  left:22.85rem; */
  font-size: .75rem;
  float: right;
  margin-top:-2.121374rem;
  margin-right:.710687rem;
  /* margin-top:-2.221374rem; */
}
</style>
