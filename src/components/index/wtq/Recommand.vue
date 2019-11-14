<template>
<!-- 这是一个父组件(从健康号精选开始放) -->
  <div id="recommand-floor">
    <div class="hot-recommand">热门推荐</div>
      <!-- 健康号精选 -->
      <div id="health">
        <div class="health-choose-title">
          <div class="title">健康号精选</div>
          <div class="health-choose-container">
            <!-- 每一个item循环生成 -->
            <div class="item" to="#">
              <div class="item-title">
                <p>发芽的大蒜还能吃吗?</p>
                <p>防癌乎?杀菌乎?发芽乎?</p>
              </div>
              <div class="item-img">
                <img src="../../../../public/images/index/5health/suan.jpg">
              </div>
            </div>

            <!-- 循环生成 -->
            <div class="item" to="#">
              <div class="item-title">
                <p>发芽的大蒜还能吃吗?</p>
                <p>防癌乎?杀菌乎?发芽乎?</p>
              </div>
              <div class="item-img">
                <img src="../../../../public/images/index/5health/suan.jpg">
              </div>
            </div>
            <div class="item" to="#">
              <div class="item-title">
                <p>发芽的大蒜还能吃吗?</p>
                <p>防癌乎?杀菌乎?发芽乎?</p>
              </div>
              <div class="item-img">
                <img src="../../../../public/images/index/5health/suan.jpg">
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- 健康商城 -->
      <div id="mall-floor">
        <div class="health-mall">
          <!-- 标题 -->
          <div class="health-mall-title">
            <div class="title">健康商城</div>
            <router-link  to="#">
              <span class="more">更多</span>
              <span class="icon"></span>
            </router-link>
          </div>
          <!-- 下方主体内容 -->
          <div class="health-mall-container">
            <router-link class="pro1" to="#">
              <img src="../../../../public/images/index/7health_mall/1.png">
            </router-link>
            <!-- 循环生成 -->
            <router-link class="pro1" to="#">
              <img src="../../../../public/images/index/7health_mall/1.png">
            </router-link>
            <router-link class="pro1" to="#">
              <img src="../../../../public/images/index/7health_mall/1.png">
            </router-link>
          </div>
        </div>
      </div>
      <!-- 爱心义诊 -->
      <div id="love-heart-floor">
          <!-- 爱心义诊标题 -->
        <div class="love-heart-yao">
          <p class="yao">爱心义诊</p>
        </div>
        <div class="love-heart-title">
          <div class="title">百位医生 在线义诊</div>
          <div class="container" >
            <!-- 循环生成 -->
            <router-link class="doctor" to="#">
              <!-- 医生图片 相对定位-->
              <div class="item-img">
                <img src="../../../../public/images/index/8love/1.webp">
              </div>
              <p>剩余4次</p>
              <p class="yuan-price">¥20元</p>
              <p clasa="now-price">¥5元</p>
            </router-link>
          <!-- 循环生成多个 -->
            <router-link class="doctor" to="#">
              <!-- 医生图片 相对定位-->
              <div class="item-img">
                <img src="../../../../public/images/index/8love/1.webp">
              </div>
              <p>剩余4次</p>
              <p class="yuan-price">¥20元</p>
              <p clasa="now-price">¥5元</p>
            </router-link>
            <router-link class="doctor" to="#">
              <!-- 医生图片 相对定位-->
              <div class="item-img">
                <img src="../../../../public/images/index/8love/1.webp">
              </div>
              <p>剩余4次</p>
              <p class="yuan-price">¥20元</p>
              <p clasa="now-price">¥5元</p>
            </router-link>
            <router-link class="more-doc" to="#">
              <p class="text">更多医生</p>
            </router-link>
          </div>
        </div>
      </div>
      <!-- 3.下面是多个子组件 -->
      <!-- 一病多问 子组件 Ask-->
      <ask></ask>
      <ask></ask>
      <ask></ask>
      <!-- 广告 -->
      <div id="gg">
        <img src="../../../../public/images/index/gg.webp">
      </div>
      <ask></ask>
      <ask></ask>
      <gzh></gzh>
      <gzh></gzh>
      <ask></ask>
      <gzh></gzh>
      <gzh></gzh>
  </div>
</template>
<script>
// 1.引入子组件

import Ask from './Ask.vue'
import Gzh from './Gzh.vue'
export default {
  // 2.注册子组件
  components:{
    "ask":Ask,
    "gzh":Gzh,
  }
}
</script>
<style scoped>
/* 文字大小 */
.hot-recommand{
  font-size:1.3rem;
  font-weight:700;
  text-align: left;
  margin-bottom:.625rem;
}
/* 健康号精选 */
  #health{
    margin:1.25rem 0;
  } 
  #health .health-choose-title{
    height:15.8125rem;
    box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
    border-radius:.3125rem;
    padding:.1875rem;
  }
  #health .title{
    font-size:1.3rem;
    color:#2b313d;
    font-weight:700;
    text-align:left;
    margin:.5rem 0 0 1rem;
  }
  #health .health-choose-container{
    margin:.3125rem 0;
  }
  #health .item{
    height:3.75rem;
    width:100%;
    padding:.1875rem;
    display:flex;
    justify-content: space-between;
    
  }
  #health .item-title{
    width:13.1875rem;
  }
  #health .item-title p{
    margin:0;
    color:#2b313d;
    padding-left:.9375rem;
    text-align:left;
  }
  #health .item-title p:first-child{
    font-size:1rem;
    font-weight:700;
    margin-top:.625rem;
  }
  #health .item-title p:nth-child(2){
    font-size:.9rem;
    color:#9d9ea7;
    margin-top:.1875rem;
  }
  #health .item-img{
    width:5.5rem;
    height:3.75rem;
    padding-right:.9375rem;
    
  }
  #health .item-img img{
    width:100%;
    height:100%;
    border-radius:.5rem;
  }

/* 健康商城 */
  #mall-floor{
    margin:1.25rem 0;
  } 
  #mall-floor .health-mall{
    height:15.8125rem;
    box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
    border-radius:.3125rem;
    padding:.1875rem;
  }
  /* 上方标题 */
  #mall-floor .health-mall-title{
    display:flex;
    justify-content: space-between;
    height:1.375rem;
    line-height:1.375rem;
    margin-bottom:.625rem;
    margin:.9375rem 0 0 1rem;
  }
  /* 文字 */
  #mall-floor .health-mall-title .title{
    font-size:1.3rem;
    font-weight: 700;
    
  }
  #mall-floor .health-mall-title .more{
    font-size:.6rem;
    color:#5e616b;
  }
  #mall-floor .health-mall-title .icon{
    background:url("../../../../public/images/index/4bing/more.png") no-repeat;
    display:inline-block;
    width:.35rem;
    height:.6rem;
    background-size:cover;
    margin-left:.3rem;
    line-height:1.375rem;
  }
  /* 下方样式 */
  #mall-floor .health-mall-container{
    margin:.3125rem 0;
  }
  #mall-floor .pro1{
    display:block;
    width:19.4375rem;
    height:3.75rem;
    margin:.5rem auto;
  }
  #mall-floor .pro1 img{
    width:100%;
  }
/* 爱心义诊 */
  #love-heart-floor{
  height:12.5rem;
  box-shadow:0 0.256rem 0.59733333rem 0.34133333rem rgba(20,19,51,.06);
  border-radius:.3125rem;
  padding:.625rem;
  margin:1.25rem 0;
}
/* 药丸样式 */
  #love-heart-floor .yao{
    width: 4.375rem;height:1.25rem;
    border:1px solid #9d9ea7;
    border-radius:2.5rem;
    line-height:1.25rem;
    font-size:.8rem;
    color:#9d9ea7;
    margin:.375rem 0 0 .375rem;
  }
  #love-heart-floor .title{
    font-size:1.3rem;
    font-weight: 700;
    text-align:left;
    margin-left:1rem;
    margin-top:.3125rem;
  }
/* 下方内容 */
  #love-heart-floor .container{
    display:flex;
    justify-content: space-between;
    
  }
  #love-heart-floor .doctor{
    width:4.375rem;
    height:7.25rem;
    margin-left:1rem;
    margin-top:.3125rem;
    position:relative;

  }
  #love-heart-floor .item-img{
    width:4.375rem;height:4.375rem;
    
  }
  #love-heart-floor .item-img img{
    width:100%;
    border-radius:.625rem;
    
  }
  #love-heart-floor .doctor>p{
    margin:0;
  }
  #love-heart-floor .doctor>p:nth-child(2){
    position:absolute;
    top:3.3125rem;
    color:#fff;
    font-size:.5rem;
    text-align:center;
    width:4.375rem;height:1.0625rem;
    background-color:#3f86ff;
    border-bottom-left-radius: .625rem;
    border-bottom-right-radius: .625rem;
  }
  #love-heart-floor .doctor>p:nth-child(3){
    color:#9d9ea7;
    font-size:.9375rem;
    text-decoration: line-through;
    margin:.1875rem 0;
  }
  #love-heart-floor .doctor>p:nth-child(4){
    color:#f00;
    font-weight:700;
  }
/* 更多医生 */
  #love-heart-floor .more-doc{
    width:4.375rem;height:4.375rem;
    border-radius:.625rem;
    background-color:#f6f7f8;
    margin-top:.3125rem;
  }
  #love-heart-floor .text{
    width:1.875rem;height:1.875rem;
    color:#9d9ea7;
    font-size:.75rem;
    margin-top:1.25rem;
    margin-left:1.25rem;
  }
/* 广告设置 */
  #gg{
    margin:1.25rem 0;
  } 
  #gg{
    width:22.25rem;
    height:14.375rem;
  }
  #gg img{
    width:100%;
    border-radius:.3125rem;
  }
/*  */

</style>

