<template>
  <div class="home">
    <div class="partone">
      <select v-model="selctcatogory">
        <option value="all">All</option>
        <option value="electronics">electronics</option>
        <option value="jewelery">jewelery</option>
        <option value="men's clothing">men's clothing</option>
        <option value="women's clothing">women's clothing</option>
      </select>
    </div>
    <div class="parttwo">
      <p class="cat-title">{{selctcatogory.toUpperCase()}}</p>
    </div>
    <div class="partthree">
      <CaedApi v-for="info in infos" :key="info.id" :imagesource="info.image" :title="info.title"/>
    </div>
     
    
    <button @click="getapi">getapi</button>
  </div>
</template>



<script>
import { ref } from '@vue/reactivity';
import axios from "axios";
import CaedApi from '../components/CaedApi.vue';
import { onMounted, onUpdated } from '@vue/runtime-core';
// @ is an alias to /src
// import AppHeader from "@/components/AppHeader.vue";

export default {
  name: "Home",
  components: {
    CaedApi
    
  },
  setup(){
    const selctcatogory = ref("all")
    const urlapi = ref("https://fakestoreapi.com/products")
    
    
    const infos = ref(null)
    let finalls = infos.value
    let getapi =  () =>{
      console.log(finalls)
    }
    let getdata =  () =>{
      
      axios
      .get(urlapi.value)
      .then(response => ( infos.rawValue = response.data));
      
    }
    onMounted(() => {
      getdata()
    })
    onUpdated(() =>{
      if(selctcatogory.value === "all"){
        urlapi.value = "https://fakestoreapi.com/products"
         axios
      .get(urlapi.value)
      .then(response => ( infos.rawValue = response.data));
      }else{
      urlapi.value = `https://fakestoreapi.com/products/category/${selctcatogory.value}`
      axios
      .get(urlapi.value)
      .then(response => ( infos.rawValue = response.data));
      }
    })

    return{infos,getapi,selctcatogory,getdata,finalls}
  }
};
</script>


<style lang="scss" scoped>
.home{
  min-height: 80vh;
  // background-color: aqua;
  padding-left:13rem;
  padding-right:13rem;
  .partone{
    height: 15vh;
    // background-color: wheat;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    select{
      background-color: white;
      border: 1px solid black;
      outline: none;
      padding: .2rem;
          option {
          font-weight: normal;
          background-color: white;
          font-size: 1rem;
          
          min-height: 1.2em;
          padding: 0px 2px 1px;
          color: rgba(0, 0, 0, 0.651);
            
          }
          option:hover {
             background-color:#005699;
            }
          
        }
    }
    .parttwo{
      margin-bottom: 2rem;
      height: 10vh;
      // background-color: rgba(255, 0, 0, 0.233);
      display: flex;
      justify-content: flex-start;
      align-items: center;
      position: relative;
      .cat-title{
        font-size: 1.3rem;
        font-weight: bold;
      }
      .cat-title:after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
          width: 20%;
          height: 2px;
          background-color: #ed088c;
      }
    }
    .partthree{
      display: grid;
      grid-template-columns: 1fr 1fr 1fr 1fr;
      grid-template-rows: 1fr 1fr 1fr 1fr;
      gap: .8rem;
    }
  }

</style>