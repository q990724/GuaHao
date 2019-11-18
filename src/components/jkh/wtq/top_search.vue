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
    <div class="all-list">
      <div class="row">
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
      <div class="row">
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
    <div class=""></div>
    
    <!-- 精选精推 -->
    <div v-for="(item,i) of list" :key="i">
      <div>{{item.hn_id}}</div>
    <div>{{item.Author}}</div>
    <div>{{item.authorType}}</div>
    <div>{{item.authorPic}}</div>
    </div>
    
  </div>
</template>
<script>
import config from  '../../../assets/js/config.js'
export default {
  data(){
    return{
      value:"",
      pno:0,
      list:[],
    }
  },
  created(){//组件创建成功后,立即执行
    this.loadMore();

  },
  methods:{
    loadMore(){//获取服务器中的商品列表
      var url = "healthyNumber/healthyNumber";
      // 自增页码
      this.pno++;
      // 创建参数对象
      var obj = {
        // pageSize选择默认值
        pno:this.pno,
      };
      // 客户端发送ajax请求(将后端app.js中所需要的参数传给服务器)
      console.log(config);
      config.axios.get(url,{params:obj})
      .then(res=>{
        console.log(res);
        
      })
      .catch(err=>{
        console.log(err);
      })
    }
  },
}
</script>
<style scoped>
/*搜索框样式*/
  .search{
    background-color:#3f86ff;
    height:100px;
  }
  .search-top{
    display:flex;
    justify-content: space-around;
    color:#fff;
  }
  .search-input{
    width:75%;height:30px;
    background:url("../../../../public/images/index/22toGuahao/gray-search.cfda5be2b31e1669e46a9bc82bf199f2.png") no-repeat 0 0;
    background-size:20px 20px;
    background-position:6px 6px;
    padding-left:30px;
    line-height:30px;
    border-radius:60px;
    margin:10px 0 10px 14px;
    border:1px solid #3775dd;
    background-color:transparent;
  }
  ::-webkit-input-placeholder{
    color:#fff;
  }
/*头像*/
  .tx{
    margin:14px 0 0 8px;
    
  }
/* 推荐医生 */
  .doc-top{
    width:90%;
    height:70px;
    background-color:#fff;
    border-radius:10px;
    margin:auto;
    display:flex;
    justify-content: space-around;
  }
  .p1{
    width:60px;
    height:78px;
    position:absolute;
    top:-10px;
    left:10px;
  }
  .txt{
    position:absolute;
    top:20px;
    left:70px;
  }
  .doc-left,.doc-right{
    display:flex;
    position:relative;
    width:45%;
    /* text-align:center; */
  }
  
  .txt p{
    font-size:12px;
    margin-top:5px;
    color:#a6a8b6;
  }

/*下方选项列表*/
  .all-list{
    position:absolute;
    top:140px;
    width:100%;
  }
  .row{
    width:100%;
    display:flex;
    justify-content: space-around;
    margin-bottom:15px;
  }

  .item{
    width:48px;
  }
  .img img{
    width:100%;
  }
  .item-info{
    width:48px;
    color:#83889a;
    font-size:12px;
  }

/*动态话题*/

</style>
