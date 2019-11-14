import Vue from 'vue'
import App from './App.vue'
import router from './router'
// import store from './store'
// 引入和配置mint-ui组件库
// 1.完整引入mint-ui组件库
import MintUI from "mint-ui"
// 2.单独引入mint-ui样式文件
import "mint-ui/lib/style.css"
// 

// 完整引入vant
import Vant from 'vant';
import 'vant/lib/index.css';

Vue.use(Vant);

// Vue.use(vant);
// 3.将mint-ui对象注册到vue实例中
Vue.use(MintUI)

Vue.config.productionTip = false

new Vue({
  router,
  // store,
  render: h => h(App)
}).$mount('#app')
