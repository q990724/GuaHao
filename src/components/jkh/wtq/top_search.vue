<template>
  <div id="top">
    <!-- 搜索框 -->
    <div class="search">
      <div class="search-top">
        <input  class="search-input" type="text" placeholder="搜索医生、疾病科普等内容">
        <img class="tx" style="width:25px;height:25px;" src="../../../../public/images/jkh/touxiang.png">
        <i></i>`
      </div>
      
      <!-- 上方的专家推荐 -->
      <div class="doc-top">
        <!-- 左边 -->
        <div class="doc-left">
          <img class="p1" src="../../../../public/images/jkh/top-entry-health.png">
          <div class="txt">
            <h4>找号主 <img style="width:16px;" src="../../../../public/images/jkh/right.png"></h4>
            <p>看科普 找大咖</p>
          </div>
        </div>
        <!-- 右边 -->
        <div class="doc-right">
          <img class="p1" src="../../../../public/images/jkh/top-entry-help.png">
          <div class="txt">
            <h4>一病多问<img style="width:16px;" src="../../../../public/images/jkh/right.png"></h4>
            <p>5位以上专家把关</p>
          </div>
        </div>
      </div>
    </div>
    <!-- 搜索框上方的医生 -->
    <!-- 下方列表 -->
    <!-- 一排是一个  -->
    <div class="all">
      <!-- 有一个相对定位 -->
      <div class="all-list">
        <div class="row" v-for="(row,i) of rows" :key="i">
        <!-- 循环生成 -->
          <div class="item">
            <div class="img">
              <img src="../../../../public/images/jkh/true-wy.png">
            </div>
            <p class="item-info">就医互助</p>
          </div>
          <!-- 循环生成 -->
          <div class="item">
            <div class="img">
              <img src="../../../../public/images/jkh/true-wy.png">
            </div>
            <p class="item-info">就医互助</p>
          </div>
          <div class="item">
            <div class="img">
              <img src="../../../../public/images/jkh/true-wy.png">
            </div>
            <p class="item-info">就医互助</p>
          </div>
          <div class="item">
            <div class="img">
              <img src="../../../../public/images/jkh/true-wy.png">
            </div>
            <p class="item-info">就医互助</p>
          </div>
        </div>
       
      </div>
      <!-- 动态话题 -->
      <div class="topic">
        <div class="first-topic">
          <div class="t1"># <span>二十四节气之立冬</span></div>
          <div class="t2"># <span>二十四节气之霜降</span></div>
        </div>
        <div class="second-topic">
          <div class="t3"># <span>更多话题/活动</span></div>
          <div class="t4"># <span>热门内容排行榜</span></div>
        </div>
      </div>
    </div>
    
    
    <!-- 精选精推 -->
    <div class="jx-recommand">
      <div class="jx-title">
        <!-- 点击的时候颜色得改变 -->
        <span>精选推荐</span>
        <span>我关注的</span>
      </div>
      <div class="context">
        <!-- 父传子传参  -->
        <!-- 父亲当中用:方式进行绑定  孩子抛出的公共属性:父亲中的i-->
        <jx v-for="(item,i) of list" :key="i" :i="i" :item="item" ></jx>
      </div>
    </div>
    
  </div>
</template>
<script>
// 引入精选推荐
import jx from './jx'
import config from  '../../../assets/js/config.js'
export default {
  data(){
    return{
      value:"",
      pno:0,
      list:[],
      // 数据加载
      please:true,//刚开始是发送请求
      loading:false,//不加载
      tips:"努力加载中",
      url:"healthyNumber/healthyNumber",
      // 上方两排
      rows:[0,1]
    }
  },
  components:{
    "jx":jx,
  },
  created(){//组件创建成功后,立即执行
    this.loadMore();

  },
  // 挂载阶段
  mounted(){
    // window.addEventListener("scroll",this.scrollBottom)
  },
  // 销毁阶段--移除掉window的监听事件,防止影响其他页面
  destroyed(){
    // window.removeEventListener("scroll",this.scrollBottom)
  },

  methods:{
    loadMore(){//#获取服务器中的商品列表
      // 自增页码
      this.pno++;
      // 创建参数对象
      var obj = {
        // pageSize选择默认值
        pno:this.pno,
      };
      // 客户端发送ajax请求(将后端app.js中所需要的参数传给服务器)
      console.log(config);
      config.axios.get(this.url,{params:obj})
      .then(res=>{
        console.log(res.data);
        console.log(this.list,typeof this.list)
        this.list = this.list.concat(res.data.data);
      })
      .catch(err=>{
        console.log(err);
      })
    },
    // #滚轮滑动到最底部时,加载更多数据(创建/挂载/更新/销毁)
    // scrollBottom(e){
    //   // #当滚轮滑动到最底部时,就加载更多数据,在页面挂载时,向服务器发送请求
    //   // #滚动条滚动的距离+当前内容的高度+滚动条的高度>整体的高度时
    //   // #还得判断当前页是不是第一页
    //   //滚动条距离顶部的距离
    //   var scrollTop = document.documentElement.scrollTop  ||document.body.scrollTop;
    //   console.log(scrollTop);
    //   // 当前内容的高度
    //   var screenHeight = window.screen.height;
    //   console.log(screenHeight);
    //   // 滚动条的高度怎么算
    //   // var scrollHeight = 
    //   // (window.screen.height + scrollTop) > document.body.clientHeight || document.documentElement.clientHeight 
    //   var obj = {
    //     pno:this.pno
    //   };
    //   if( document.body.clientHeight || document.documentElement.clientHeight < scrollTop + screenHeight ){
    //     console.log("加载到底部了");
    //     console.log(window.screen.height,scrollTop,document.body.clientHeight);
    //     this.please = false;
    //     this.loading = true;
    //     this.tips = "努力加载中";
    //     // 向服务器发送请求
    //     config.axios.get(this.url,{params:obj})
    //     .then(res=>{
    //       console.log(res);
    //       this.list = this.list.concat(res.data.rows);
    //     })
    //     .catch(err=>{
    //       console.log(err);
    //     })
    //   }else{
    //     console.log("未加载到底部");
    //   }
    //   // clientHeight即为html的css高度
    // },
  }
}
</script>
<style scoped>
#top{
  background-color:#fff;
  position:relative;
}
.all{
  border-bottom:1px solid #ebecf1;
  height:5.618321rem;
  /* background-color:#fff; */
  z-index:1;
  
}
/*搜索框样式*/
  .search{
    background-color:#3f86ff;
    height:6.10687rem;
  }
  .search-top{
    display:flex;
    justify-content: space-around;
    color:#fff;
  }
  .search-input{
    width:75%;height:1.832061rem;
    background:url("../../../../public/images/index/22toGuahao/gray-search.cfda5be2b31e1669e46a9bc82bf199f2.png") no-repeat 0 0;
    background-size:1.221374rem 1.221374rem;
    background-position:.366412rem .366412rem;
    padding-left:1.832061rem;
    line-height:1.832061rem;
    border-radius:3.664122rem;
    margin:.610687rem 0 .610687rem .854962rem;
    border:1px solid #3775dd;
    background-color:transparent;
  }
  ::-webkit-input-placeholder{
    color:#fff;
  }
/*头像*/
  .tx{
    margin:.854962rem 0 0 .48855rem;
    
  }
/* 推荐医生 */
  .doc-top{
    width:90%;
    height:4.274809rem;
    background-color:#fff;
    border-radius:.610687rem;
    margin:auto;
    display:flex;
    justify-content: space-around;
    box-shadow:0 .244275rem .48855rem 0 rgba(40,53,76,.05);
    z-index:99;
  }
  .p1{
    width:3.664122rem;
    height:4.763359rem;
    position:absolute;
    top:-0.610687rem;
    left:.610687rem;
  }
  .txt{
    position:absolute;
    top:1.221374rem;
    left:4rem;
  }
  .doc-left,.doc-right{
    display:flex;
    position:relative;
    width:45%;
    /* text-align:center; */
  }
  
  .txt p{
    font-size:.732824rem;
    margin-top:.305344rem;
    color:#a6a8b6;
  }

/*下方选项列表*/
  .all-list{
    position:absolute;
    top:8.549618rem;
    width:100%;
  }
  .row{
    width:100%;
    display:flex;
    justify-content: space-around;
    margin-bottom:.916031rem;
  }

  .item{
    width:2.931298rem;
  }
  .img img{
    width:100%;
  }
  .item-info{
    width:3.931298rem;
    color:#83889a;
    font-size:.732824rem;
  }

/*动态话题*/
  .topic{
    margin-top:12.21374rem;
    font-size:.916031rem;
    color:#83889a;
  }
  .first-topic,.second-topic{
    width:95%;
    margin:auto;
    display:flex;
    justify-content: space-between;
    border-top:1px solid #ebecf1;
    height:2.442748rem;
    line-height:2.442748rem;
  }
  .first-topic span,.second-topic span{
    color:#000;
  }
  .t1,.t3{margin-left:1.526718rem;}
  .t2{margin-right:1.221374rem;}
  .t4{margin-right:2.137405rem;}
/*下方精选推荐*/
.jx-title{
  display: flex;
  justify-content: space-around;
  height:2.442748rem;
  line-height:2.442748rem;
  border-bottom:1px solid #ebecf1;
  border-top:1px solid #ebecf1;
  color:#a6a8b6;
  font-size:.916031rem
}
</style>
