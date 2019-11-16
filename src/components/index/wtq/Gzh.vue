<template>
  <div id="gongzhong">
    <div class="health-num">
      <!-- 药丸设计 -->
      <div class="health-num-yao">
        <p class="yao">健康号</p>
      </div>
      <!-- 下方内容 -->
      <div class="health-num-container">
        <div class="num-img">
          <img src="../../../../public/images/index/gzh/doc.webp">
        </div>
        <div class="num-text">
          <p>吴春林 | 住院医师</p>
          <p>心血管病诊疗 牢记八个字</p>
          <p>近些年，我国心血管病的诊疗在不断改进，但临床上仍感觉“越治越多”该如何改变这一现状呢欧美等国家的成功经验提示我们，应具备心血管病全程管理的战略思维，即深化“预防第一、全程管理”的理念，</p>
        </div>
      </div>
      <!-- 最下方 回复 点赞 -->
      <div class="num-bottom">
        <div class="topic">
          <router-link class="tab" to="#">#糖尿病</router-link>
          <router-link class="tab" to="#">#高血压</router-link>
        </div>
        <div class="zan">
          <span>回复</span><span>6</span>
          <span>点赞</span><span>8</span>
        </div>
      </div>
      
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
/* 通用样式 */
a{text-decoration: none;}
p{margin:0;}
#gongzhong{
  margin:1.25rem 0;
}
/* 整体阴影 */
.health-num{
  width:100%;
  height:10.375rem;
  box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
  border-radius:.3125rem;
  padding:0.4rem 0.4rem 0 0;
}
/* 药丸样式 */
  .yao{
    width: 4.375rem;height:1.25rem;
    border:.0625rem solid #9d9ea7;
    border-radius:2.5rem;
    line-height:1.25rem;
    font-size:.8rem;
    color:#9d9ea7;
    margin:.375rem 0 0 .375rem;
    text-align:center;
  }
  .health-num-container{
    display:flex;
    justify-content: space-between;
    margin-top:.3125rem;
    padding:.3125rem;
  }
  .num-img{
    width:2.8125rem;height:2.8125rem;
  }
  .num-img img{
    width:100%;
  }
  .num-text{
    width:18.125rem;height:5.875rem;
    text-align:left;
    margin-left:.625rem;
  }
  .num-text p:first-child{
    color:#5e616b;
    font-size:.875rem;
    font-weight:500;
  }
  .num-text p:nth-child(2){
    color:#2b313d;
    font-size:1rem;
    font-weight:700;
    margin:.3125rem 0;
  }
  .num-text p:nth-child(3){
    height:1.9rem;
    overflow: hidden;
    text-overflow: ellipsis;
    color:#9d9ea7;
    font-size:.8125rem;
    margin:.3125rem 0;
  }
  .num-bottom{
    display:flex;
    justify-content: space-between;
    padding:.3125rem;
  }
  .topic{
    color:#3f86ff;
    margin-right:.625rem;
  }
  .tab,.zan span{
    font-size:.75rem;
    margin-right:.625rem;

  }
  .zan span:nth-child(1),.zan span:nth-child(3){
    color:#9d9ea7
  }
  .zan span:nth-child(2),.zan span:nth-child(4){
    color:#5e616b
  }
</style>

