<template>
  <div class="main-find">
    <!-- 1.左边的咨讯 -->
    <van-tabs @click="onClick">
      <van-tab title="资讯">
        <div class="left-scroll">
          <div class="main-msg" v-for="(m,i) of msg" :key="i">
            <div class="msg">
              <div class="left-title">
                <p class="title">春节吃坚果会变胖？这样吃不胖HAHAHAHAHHAH</p>
                <p class="subtitle">
                  【春节特辑】瓜子、腰果、板栗，哪种坚果不胖人？
                </p>
              </div>
              <div class="right-img">
                <img src="../../../public/images/find/jg.jpg" alt="">
              </div>
            </div>
            <div class="footer">
              <span>健康资讯</span>
              <div>
                <span>...</span>
              </div>
            </div>
          </div>
          <!-- 健康号 -->
          <h2 class="health-h2">健康号</h2>
          <div class="health">
            <ul class="health-ul">
              <li class="doc-intr" v-for="(d,i) of doc" :key="i">
                <div class="doc-img">
                  <img src="../../../public/images/find/doctor.jpg" alt="">
                </div>
                <p class="doc-name">老廖说医疗</p>
                <p class="short-intr">主任医师/教授 广州医科大学附属口腔医院-口腔颞下颌关节科</p>
                <span class="focus">关注</span>
              </li>
            </ul>
          </div>
        </div>
      </van-tab>
      <van-tab class="tools" title="工具">
        <div class="nav-tech" v-for="(t,i) of tool" :key="i">
          <div class="left-p">
            <p class="nav-tech-p">科室导航</p>
            <h3 class="nav-details">常见科室分类，帮你更快找到对医生</h3>
          </div>
          <div class="right-img">
            <img src="../../../public/images/find/found-zizhen.png" alt="">
          </div>
        </div>
      </van-tab>
    </van-tabs>
    <frame :frameName="2"></frame>
  </div>
</template>
<script>
import config from "../../assets/js/config.js";
import frame from "../index/frame.vue"
export default{
  components : {
    "frame" : frame
  },
  data(){
    return {
      msg:[1,2,3],
      doc:[1,2,3,4],
      url:"hospitals/hospitalsAll",
      tool:[1,2,3,4],
    }
  },
  created() {
    this.load();
  },
  methods: {
    onClick(name, title) {
      this.$toast(title);
    },
    load(){
      config.axios.get(this.url)
      .then(res=>{
        console.log(res.data);
      })
    }
  }
}
</script>
<style scoped>
mt-header{
  background: #fff;
  color:#000;
}
.left-scroll{
  /* padding-top:.610687rem; */
}
.main-msg{
  height:7.538931rem;
  background: #fff;
  padding:.610687rem .916031rem;
  margin-top:.610687rem;
}
.msg{  
  display: flex;
  justify-content: space-between;
}
.left-title{
  width:16rem;
  height:6.328244rem;
}
.right-img{
  width:6.717557rem;
  height:5.007634rem;
}
.right-img>img{
  width:100%;
  height:100%;
}
.title{
  font-size:1.154962rem;
  color:#28354c;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 1;
  overflow: hidden;
}
.subtitle{
  font-size: 1.054962rem;
  color:#83889a;
}
.footer{
  display: flex;
  justify-content: space-between;
  color:#83889a;
  font-size: .854962rem;
}
.health-h2{
  padding:.610687rem .916031rem 0 .916031rem;
  font-size:1.254962rem;
  color:#28354c;
  font-weight: normal;
}
.health-ul{
  width:41.526718rem;
  display: flex;
  flex-wrap: nowrap;

}
.health{
  padding:.610687rem;
    overflow-x: auto;
  overflow-y: hidden;
}
.doc-intr{
  width:9.770992rem;
  height:12.824427rem;
  background: #fff;
  padding:.610687rem .610687rem;
  text-align: center;
  margin-right:.610687rem;
  -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
}
.doc-img>img{
  border-radius: 50%;
  width:4.030534rem;
  height:4.030534rem;  
}
.doc-name{
  font-size:1.254962rem;
  color:#28354c;
  padding-top:.916031rem;
  padding-bottom: .610687rem;
}
.short-intr{
  font-size: .932824rem;
  color:#83889a;
  -webkit-line-clamp:2;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  line-height: 1.264122rem;
}
.focus{
  margin:.610687rem 0;
  display: inline-block;
  padding:.610687rem 1.221374rem;
  font-size:.854962rem;
  border:1px solid #3f86ff;
  border-radius: 1.9216031rem;
  color:#3f86ff;
}
.tools{
  margin-top: .610687rem;
}
.nav-tech{
  margin-bottom: .183206rem;
  height:3.969466rem;
  background: #fff;
  display: flex;
  justify-content: space-between;
  padding:1.105344rem .916031rem;
}
.right-img{
  width: 2.381679rem;
  height:2.381679rem;
}
.right-img>img{
  margin:.610687rem 1.316031rem 0 0;
}
.left-p{
  color:#28354c;
  font-size:.64rem;
}
.nav-tech-p{
  font-size:1.099237rem;
  padding-bottom: .610687rem;
}
.nav-details{
  font-size: 1.099237rem;
  color:#908f9d;
  font-weight: normal;
}
</style>