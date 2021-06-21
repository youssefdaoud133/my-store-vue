<template>
  <div class="partoneandtwo">
    <div class="partone">
      <div class="leftdiv">
        <router-link to="/">ONE <span>STORE</span></router-link>
      </div>
      <div class="rightdiv">
        <p>EGP {{totalyprise}}</p>
        <div class="bag">
          <router-link to="/Cart">
            <img class="icn" src="../icons/shopping-bag.png" >
          </router-link>
          <span>{{countproduct}}</span>
        </div>
      </div>
      
    </div>
    <div class="partwo">
      <router-link to="/">Home</router-link> 
      <router-link to="/Cart">Cart</router-link>
    </div>
  </div>
</template>

<script>
import { ref } from '@vue/reactivity';

export default {
  name: "AppHeader",
  props: {
    
  },
  setup(){
    let totalyprise = ref(0.00)
    let countproduct = ref(0)
    return{totalyprise,countproduct}
  }  
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.partoneandtwo{
  height: 20vh;

 
  .partone{
     height: 12vh;
     background-color: #eef3fb;
     display: flex;
     flex-direction: row;
     justify-content: center;
     align-items: center;
     justify-content: space-between;
     padding-left:13rem;
  padding-right:13rem;
     .leftdiv{
       a{
       color: #ed088c;
       text-decoration: none;
       font-size: 1.8rem;
        }
        span{
          color: #005699;
        }
     }
     .rightdiv{
       .icn{
       width:2.5rem;
        }
        .bag{
          position: relative;
          span{
            position: absolute;
            background-color: #ed088c;
            width: 1.8rem;
            height:1.8rem;
            border-radius: 50%;
            font-size: 1.2rem;
            left: -1rem;
            bottom: -1rem;
            color: white;
            font-weight: bold;
           display: flex;
           justify-content: center;
           align-items: center; 
          }
        }
        
        display: flex;
        justify-content: center;
        align-items: center;
        width: 7rem;
        justify-content: space-between;
     }
     
     
  }
  .partwo {
   padding-left:13rem;
  padding-right:13rem;
  background-color: black;
  height: 8vh;

  display: flex;
  justify-content: flex-start;
  align-items: center;
  a{
    color: white;
    text-decoration: none;
    padding: 1.3rem .5rem;
     transition: .4s ease;
     font-family: "Poppins",sans-serif;
     font-weight: bold;
  }
  a:hover{
    background-color: #005699;
  }
  .router-link-active{
    background-color: #005699;
  }
}
}

</style>
