import Vue from 'vue'
import Router from 'vue-router'
import parent from "./components/index/mhp/parent.vue"
import city from "./components/index/mhp/city.vue"
import preTitle from "./components/index/mhp/preTitle.vue"
import wysearch from "./components/index/mhp/wysearch.vue";
import preGuahao from "./components/index/mhp/preGuahao.vue";

Vue.use(Router)
export default new Router({
  routes: [
    {path:"/preGuahao",component:preGuahao},
    {path:"/wysearch",component:wysearch},
    {path:"/preTitle",component:preTitle},
    {path:"/city",component:city},
    {path:"/parent",component:parent},
  ]
})
