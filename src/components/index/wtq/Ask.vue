<template>
  <div id="ask-floor">
    <div class="ask">
      <p class="ask-title">一病多问</p>
      <!-- 问题区域 -->
      <div class="ask-area">
        <p class="ask-icon">问</p>
        <div class="ask-text">
          <p>糖尿病、高血压十几年2016年查出甲状腺乳头状癌转移淋巴手术两侧全切，但一侧淋巴转移病灶手术风险大没去掉干净.手术后医生建议碘131治疗，在上海复旦大学附属中山医院做过三次碘131治疗了！</p>
        </div>
      </div>
      <div class="ask-tab">
        <router-link class="tab" to="#">#糖尿病</router-link>
        <router-link class="tab" to="#">#高血压</router-link>
      </div>
      <!-- 回答区域 -->
      <div class="answer-area">
        <p class="answer-icon">答</p>
        <div class="answer-text">
          <!-- 每一个item 弹性 -->
          <div class="item">
            <div class="item-img">
              <img src="../../../../public/images/index/8love/1.png">
            </div>
            <p class="item-text">主治医生</p>
          </div>
          <!-- 遍历获得 -->
          <div class="item">
            <div class="item-img">
              <img src="../../../../public/images/index/8love/1.png">
            </div>
            <p class="item-text">主治医生</p>
          </div>
          <div class="item">
            <div class="item-img">
              <img src="../../../../public/images/index/8love/1.png">
            </div>
            <p class="item-text">主治医生</p>
          </div>
          <!-- 查看详情 -->
          <div class="check">
            <p class="check-top"><span>7位</span>医生作答</p>
            <p class="check-details">查看详情</p>
          </div>
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
p{
  margin:0;
}
a{
  text-decoration:none;
}
/* 标题 */
#ask-floor{
  margin:1.25rem 0;
}
.ask{
  width:100%;
  height:12.0625rem;
  box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
  border-radius:.610687rem;
  padding: .9375rem 1.5rem ;
  box-sizing: border-box;
}
.ask-title{
  width: 4.375rem;height:1.25rem;
  border:.0625rem solid #9d9ea7;
  border-radius:2.5rem;
  line-height:1.25rem;
  font-size:.8rem;
  color:#9d9ea7;
  /* 一病多问 上边距和左边距 */
  margin:.375rem 0 0 0;
  text-align:center;
}
/* 下方问题区域 */
.ask-area{
  display:flex;
  margin:.625rem 0 .3125rem 0;
}
.ask-icon,.answer-icon{
  width:1.5625rem;
  height:1.5625rem;
  background-color:#5bd692;
  border-radius:50%;
  margin-right:.625rem;
  color:#fff;
  font-size:.9375rem;
  line-height:1.5625rem;
  text-align:center;
}
.answer-icon{background-color:#589bfe;}
.ask-text{
  width:17rem;
  height:2.2rem;
  text-align:left;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp:2;
  -webkit-box-orient: vertical;
  color:#2b313d;
  font-weight:700;
}
.ask-tab{
  text-align:left;
  font-size:.75rem;
  margin-left:2.1875rem;
}
.tab{
  color:#3f86ff;
  margin-right:.625rem;
}
/* 回答区域 */
.answer-area{
  display:flex;
  padding:.3125rem 0;
}
.answer-text{
  display:flex;
  justify-content: space-between;

}
.item{
  width:3.9375rem;height:3.875rem;
  text-align: center;
}
.item-img{
  width:2.5rem;height:2.5rem;
}
.item-img img{
  width:100%;
  border-radius:.3125rem;
  margin-left:.625rem;
}
.item-text{
  color:#9d9ea7;
  font-size:.625rem;
  margin-top:.3125rem;
}
.check{
  text-align:center;
}
.check-top{
  color:#5e616b;
  font-size:.9375rem;
  margin-top:.3125rem;
}
.check-top span{
  color:#5b9aff;
  font-weight:700;
}
.check-details{
  color:#fff;
  width:5rem;
  height:1.5625rem;
  background-color:#5b9aff;
  border-radius:2.5rem;
  line-height:1.5625rem;
  font-size:.875rem;
  font-weight:700;
  margin-top:.75rem;
}
</style>
