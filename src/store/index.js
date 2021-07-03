import { createStore } from "vuex";

export default createStore({
  state: {
    allproducts : [],
    allprice : [],
    countproduct: 0,
    totalyprise : null,
    id : 0
  },
  mutations: {
    increaseCounter(state){
      state.countproduct++
     
      console.log(state.allprice)
    },
    discreaseCounter(state){
      state.countproduct--
     
      console.log(state.allprice)
    },
    resetallthing(state){
      state.allproducts = []
      state.allprice = []
      state.countproduct = 0

    }
  },
  actions: {},
  modules: {},
  getters: {
    getproducts: state => state.allproducts,
    getcountproduct: state => state.countproduct,
    gettotalyprise: state => state.totalyprise
  }
});
