import { onMounted, ref } from '@vue/runtime-core';
import axios from "axios";


setup(){
    let infos = ref(null)
    let getapi =  () =>{
      console.log(infos.rawValue)
    }
    let getdata =  () =>{
      axios
      .get('https://fakestoreapi.com/products')
      .then(response => ( infos.rawValue = response.data));
    }
   onMounted(() => {
      getdata()
    })

    return{infos,getapi}
  }