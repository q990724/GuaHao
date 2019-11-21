<template>
  <div id="index-bottom">
    <!-- 1f特色服务 -->
    <div id="special-server-floor">
      <!-- 上方标题 -->
      <div class="special-server-title">
        <span class="serve">特色服务</span>
        <!-- 更多  跳转到下一个组件 -->
        <div class="all" to="#">
          <span class="all-text">全部</span>
          <span class="icon"></span>
        </div>
      </div>
      <!-- 主要内容 -->
      <div class="special-server-container">
        <!-- 每一个都循环生成 -->
        <div class="item" to="#" v-for="(item,i) of servers" :key="i">
          <div style="width:3rem;height:3rem" class="item-img">
            <img class="server-img" src="../../../../public/images/index/2serve/doctor.webp" width="28">
          </div>
          <div class="item-text">私人医生</div>
        </div>

        
      </div>
    </div>
    <!-- 2f专病专科 -->
    <div id="type-floor">
      <!-- 专病专科整体 -->
      <div class="home-special">
        <!-- 标题 -->
        <div class="home-special-title">
          <div class="title">专病专科</div>
          <div  to="#">
            <span class="more">更多</span>
            <span class="icon"></span>
          </div>
        </div>
        <!-- 主体内容 -->
        <div class="home-special-container">
          <!-- 一排四个 -->
          <div class="row">
            <!-- 一排中的一个 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <!-- 之后的循环生成 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
          </div>
          <!-- 复制一排  排也得循环-->
          <div class="row">
            <!-- 一排中的一个 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <!-- 之后的循环生成 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
          </div>
          <!-- 一共循环三次 -->
          <div class="row">
            <!-- 一排中的一个 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <!-- 之后的循环生成 -->
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
            <div class="item" to="#">
              <div class="item-img">
                <img src="../../../../public/images/index/4bing/1tang.png">
              </div>
              <div class="item-name">糖尿病</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 3f热门推荐   --子组件-->
    <recommand></recommand>
    <!-- 下方 -->
    <div class="bottom-info">
      <span>就医不难,健康有道</span>
    </div>
  </div>
</template>
<script>
import Recommand from './Recommand.vue'
export default {
  components:{
    "recommand":Recommand,

  },
  data(){
    return {
      servers:[1,2,3,4,5,6,7,8,9,10],
    }
  },
}
</script>
<style scoped>
/* 每个子组件之间的外边距是20px */
/* 通用样式 */
  a{text-decoration: none;
    color:#000;}
  ul{
    list-style:none;
    padding-left:0;
    margin:0;
  }
  #index-bottom{
    padding:0 1.099237rem;
    background-color:#fff;
  }
/*  特色服务*/
  #special-server-floor{
    height:5.9375rem;
    overflow:hidden;
  }
  /* 特色服务 标题 */
  #special-server-floor .special-server-title{
      display:flex;
      justify-content: space-between;
      height:1.375rem;
      width:100%;
      margin-bottom:.610687rem;
    }
  #special-server-floor .special-server-title span.serve{
      color:#2b313d;
      font-size:1.3rem;
      font-weight:700;
      line-height:1.375rem;
    }
  #special-server-floor .all{
      font-size:.6rem;
        color:#5e616b;
    }
  #special-server-floor .icon{
      background:url("../../../../public/images/index/4bing/more.png") no-repeat;
      display:inline-block;
      width:.35rem;
      height:.6rem;
      background-size:cover;
      margin-left:.3rem;
      line-height:22px;
    }
  /* 下方主要内容 */
  #special-server-floor .special-server-container{
    display:flex;
    flex-wrap: nowrap;
    overflow-x: auto;
    padding: 0rem 1.25rem 1.875rem .3125rem;
    overflow-y: hidden;
  }
  #special-server-floor .item{
    width:20%;
    text-align:center;
    margin-right: 1.875rem;
    display: flex;
    flex-direction: column;
  }
  /* #special-server-floor .item-img{
    /* margin:.625rem .625rem  0 .625rem; */
    /* margin: 0 1rem;
    width:1.8rem;
  } */ 
  #special-server-floor .item-img .server-img{
    width:100%;
    height:100%;
  } 
  #special-server-floor .item-text{
    color:#5e616b;
    font-size:.512rem;
    line-height:.6rem;
    margin-top:.2rem;
    width:75px;
    text-align:left;
  }
/*  专病专科*/
/* 上方标题 */
  #type-floor{
    margin:1.25rem 0;
  }
  #type-floor .home-special-title{
    display:flex;
    justify-content: space-between;
    height:1.375rem;
    line-height:1.375rem;
    margin-bottom:.625rem;
  }

  #type-floor .home-special-title>div[to]{
    display: flex;
    align-items: center;
  }

  /* 文字 */
  #type-floor .home-special-title .title{
    font-size:1.3rem;
    font-weight: 700;
  }
  #type-floor .home-special-title .more{
    font-size:.6rem;
    color:#5e616b;
  }
  #type-floor .home-special-title .icon{
    background:url("../../../../public/images/index/4bing/more.png") no-repeat;
    display:inline-block;
    width:.35rem;
    height:.6rem;
    background-size:cover;
    margin-left:.3rem;
    line-height:1.375rem;
  }
  /* 下方主体内容 */
  #type-floor .home-special-container .row{
    display:flex;
    justify-content: space-between;
    margin-bottom:.625rem;
  }
  #type-floor .home-special-container .item{
     width:5rem;
    height:5rem;
    border-radius:.4rem;
    background-color:#f5f9ff;
  }
  #type-floor .item-img{
    width:2.0625rem;
    height:2.0625rem;
    margin-top:.9375rem;
    margin-left:1.4375rem;
  }
  #type-floor .item-img img{
    width:100%;
    height:100%;
  }
  #type-floor .item-name{
    color:#5e616b;
    font-size:.512rem;
    line-height:.6rem;
    text-align:center;
    margin-top:.625rem;
  }
/* 底部信息样式 */
.bottom-info{
  width:60%;height:7.053435rem;
  margin:2.221374rem auto;
  color:#c3c4ca;
  position:relative;
}
.bottom-info span{
  margin-left: 2.305344rem;
  font-weight:500;
}
.bottom-info::before,.bottom-info::after{
  content:"";
  position:absolute;
  top:.5rem;
  width:1.9rem;
  height:.061069rem;
  background-color:#c3c4ca;
}
</style>
