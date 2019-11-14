<template>
  <div class="container">
    <preTitle></preTitle>
    <wysearch></wysearch> 
    <div class="four">
      <ul>
        <li class="sanjia">
          <div>
            <img src="" alt="">
          </div>
          <span>三甲体检</span>
        </li>
      </ul>

    </div>
  </div>
</template>
<script>
import preTitle from "./preTitle";
import wysearch from "./wysearch";
export default {
  data() {
    return {
      
    };
  },
  components:{
    "preTitle":preTitle,
    "wysearch":wysearch,
  },
}
</script>
<style scoped>
templete{
    height:1200px;
}
wysearch{
  border-bottom:1px solid #aaa;
}
.tree{
  height:1200px !important;
}
.four{
  width:100%;
  height:5.875rem;
}
</style>
