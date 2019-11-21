<template>
  <div id="jx">
    <!-- 第一行内容 -->
    <div class="first-row">
      <div class="left">
        <div class="img">
          <img :src="`http://127.0.0.1:5050/${item.authorPic}`">
        </div>
        <div class="info">
          <span>{{item.author}} | {{item.authorType}}</span>
          <span style="color:#a6a8b6;">{{item.send_time}}</span>
        </div>
      </div>
      <div class="right">关注</div>
    </div>
    <!-- 第二行标题 -->
    <div class="container">
      <p class="title">{{item.title}}</p>
      <!-- 第三行 -->
      <p class="msg">{{item.content}}</p>
      <div class="msg-img">
        <img :src="`http://127.0.0.1:5050/${item.content_pic}`">
      </div>
      <!-- 最后一行的额话题.回复 点赞 -->
      <div class="last">
        <span class="last-text" v-for="(t,index) of item.tag" :key="index">#{{t}}</span>
        <div class="last-right">
          <span> 回复 {{item.commend_count}} .</span>
          <span>点赞 {{item.good_count}}</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  // 子定义公开的属性用于接住父亲给的变量值
  // props中的属性和data中的变量使用是一样的,只不过不能修改
  props:{//规定接收的值的类型type 和默认值default
    i:{type:Number},
    item:{default:{},type:Object}
  },
}
</script>
<style scoped>
#jx{
  border-top:1px solid #ebecf1;
  border-bottom:1px solid #ebecf1;
}
/*第一排*/
  .first-row{
    display:flex;
    justify-content: space-between;
    padding:15px 15px 0 15px;
  }
  .left{
    display:flex;
    justify-content: start;
  }
  .img{
    width:36px;
    height:36px;
  }
  .img img{width:100%;}
  .info{
    display:flex;
    flex-direction: column;
    font-size:12px;
    margin:6px 0 0 10px;
  }
  .info span:first-child{
    margin-bottom:3px;
  }
  .right{
    width:56px;height:20px;
    border:1px solid #3f86ff;
    border-radius:50px;
    font-size:12px;
    line-height:20px;
    padding:0 3px;
    text-align:center;
    color:#3f86ff;
  }
/*标题*/
  .container{
    padding:15px 15px;
  }
  .title{
    font-size:18px;
    font-weight:700;
    color:#28354c;
    margin-bottom:10px;
  }
  .msg{
    font-size:14px;
    color:#4f5264;
    /* text-overflow: -o-ellipsis-lastline; */
    overflow: hidden;
    text-overflow: ellipsis;
    display:-webkit-box;
    white-space: nowrap;
    -webkit-line-clamp: 2;
    -webkit-box-orient:vertical;
    word-wrap: break-word;
  }
  .msg-img{
    width:208px;
    height:140px;
    overflow: hidden;
    margin:10px 0;
  }
  .msg-img img{
    width:100%;
  }
  .last{
    display:flex;
    justify-content: space-between;
    font-size:12px;
    color:#a6a8b6;
  }
  .last-text{
    color:#2f4e98;
  
  }
  .last-right{
    color:#a6a8b6;
  }

</style>
