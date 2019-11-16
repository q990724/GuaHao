import Vue from 'vue'
import Router from 'vue-router'
import parent from "./components/index/mhp/parent.vue"
import city from "./components/index/mhp/city.vue"
import preTitle from "./components/index/mhp/preTitle.vue"
import wysearch from "./components/index/mhp/wysearch.vue";
import preGuahao from "./components/index/mhp/preGuahao.vue";
import BottomBar from "./components/index/wtq/BottomBar.vue";
import tools from "./components/me/wf/tools.vue";
import me from "./components/me/me.vue";
import login from "./components/me/wf/login.vue";
import reg from "./components/me/wf/reg.vue"
Vue.use(Router)
export default new Router({
  routes: [
    { path: "/preGuahao", component: preGuahao },
    { path: "/wysearch", component: wysearch },
    { path: "/preTitle", component: preTitle },
    { path: "/city", component: city },
    { path: "/parent", component: parent },
    { path: "/BottomBar", component: BottomBar },
    { path: "/tools", component: tools },
    { path: "/me", component: me },
    { path: "/login",component: login},
    { path: "/reg",component: reg}
  ]
})
