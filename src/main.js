import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store/vuex.js'

//1:完整引入mint-ui组件库
import MintUI from "mint-ui"
//2.单独引入mint-ui样式文件
import "mint-ui/lib/style.css"
//3:将mintui对象注册在vue实例中
Vue.use(MintUI)

Vue.config.productionTip = false



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
