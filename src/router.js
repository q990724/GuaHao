import Vue from 'vue'
import Router from 'vue-router'
import parent from "./components/index/mhp/parent.vue"
import city from "./components/index/mhp/city.vue"
import preTitle from "./components/index/mhp/preTitle.vue"
import wysearch from "./components/index/mhp/wysearch.vue";
import preGuahao from "./components/index/mhp/preGuahao.vue";
import BottomBar from "./components/index/wtq/BottomBar.vue";
import me from "./components/me/me.vue";
import login from "./components/me/wf/login.vue";
import index from "./views/index/index.vue";
import reg from "./components/me/wf/reg.vue";
import order2 from "./components/index/wtq/professor/Order2";
import order_main from "./components/index/wf-zwb/order_main.vue";
import frame from "./components/index/frame.vue"
import find from "./components/fx/find.vue";
import jkh from "./components/jkh/wtq/top_search.vue";
import hospitalMain from "./components/index/mhp/hospitalMain.vue";
import order3 from "./components/index/wtq/professor/Order3";
import appointment from "./components/index/wf-zwb/appointment.vue";
import myorder from "./components/me/order/myorder.vue";
Vue.use(Router)
export default new Router({
  routes: [
	{ path: "/", component: index },
    { path: "/preGuahao", component: preGuahao },
    { path: "/wysearch", component: wysearch },
    { path: "/preTitle", component: preTitle },
    { path: "/city", component: city },
    { path: "/parent", component: parent },
    { path: "/BottomBar", component: BottomBar },
    { path: "/me", component: me },
    { path: "/login",component: login},
    { path: "/index",component: index},
    { path: "/reg",component: reg},
    { path: "/frame",component: frame},
    { path: "/find",component: find},
    { path: "/jkh",component: jkh},
		{ path: "/order2",component: order2,name:"order2"},
    { path: "/order_main",component:order_main,name:"order_main"},
    { path: "/hospitalMain",component: hospitalMain},
    { path: "/order3",component: order3,name:"order3"},
    { path: "/appointment",component:appointment,name:"appointment"},
    { path: "/myorder",component: myorder},
  ]
})
