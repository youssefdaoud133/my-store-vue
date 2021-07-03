import { onMounted, ref } from '@vue/runtime-core';
import axios from "axios";

      infos.rawValue

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





  
    data(){
        return{
            idproduct:this.$route.params.id,
            more:null,
           
        }
    },
    mounted(){
        axios
      .get(`https://fakestoreapi.com/products/${this.idproduct}`)
      .then(response => ( this.more = response.data));
      
    },
    methods:{
        gett(){return this.more.id}
    }