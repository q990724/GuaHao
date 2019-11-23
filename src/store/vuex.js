import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    order_msg : {}
  },
  getters:{
    getOrderMsg(state){
      return state.order_msg;
    }
  },
  mutations: {
    setOrderMsg(state,obj){
      state.order_msg[obj.name] = obj.val;
    }
  },
  actions: {
  },
  modules: {
  }
})
