<template>
  <div>
    <wytitle class="title"></wytitle>
    <wysearch></wysearch>
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
import wysearch from "./wysearch";
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
    "wysearch":wysearch,
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
</style>
