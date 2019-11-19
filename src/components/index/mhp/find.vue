<template>
  <div class="main-find">
    <van-tabs @click="onClick">
      <van-tab title="资讯">
        <div class="msg">
          <div class="left-title">
            <p class="title">火锅里飘着的"红油"是什么？</p>
            <p class="subtitle">
              【春节特辑】瓜子、腰果、板栗，哪种坚果不胖人？
            </p>
          </div>
          <div class="right-img">
            <img src="" alt="">
          </div>
          <div class="footer">
            <span>健康资讯</span>
            <div>
              <span>...</span>
            </div>
          </div>
        </div>
      </van-tab>
      <van-tab title="工具">
        
      </van-tab>
    </van-tabs>
  </div>
</template>
<script>
export default{
  data(){
    return {

    }
  },
  methods: {
      onClick(name, title) {
        this.$toast(title);
      }
    }
  }
</script>
<style scoped>
mt-header{
  background: #fff;
  color:#000;
}
</style>