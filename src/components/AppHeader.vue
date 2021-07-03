<template>

  <div class="partoneandtwo">
    <div class="partone">
      <div class="leftdiv">
        <router-link to="/">ONE <span>STORE</span></router-link>
      </div>
      <div class="rightdiv">
        <p>EGP {{$store.state.allprice.reduce((accumulator = 0,currentValue = 0) =>{
        
          return accumulator + currentValue;
        
       
      }, 0)}}</p>
        <div class="bag">
          <router-link to="/Cart">
            <img class="icn" src="../icons/shopping-bag.png" >
          </router-link>
          <span>{{$store.state.countproduct}}</span>
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

export default {
  name: "AppHeader",
  data(){
    return{
      countpro:this
    }
  }
}
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
       p{
         width: 14rem;
       }
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
        width: 15rem;
        justify-content: space-between;
        flex-direction: row;
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


@media screen and (max-width: 750px) {
    
  .partone{
     height: 12vh;
     background-color: #eef3fb;
     display: flex;
     flex-direction: row;
     justify-content: center;
     align-items: center;
     justify-content: space-between;
     padding-left:2rem;
  padding-right:2rem;
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
       p{
         width: 14rem;
       }
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
        width: 15rem;
        justify-content: space-between;
        flex-direction: row;
     }
     
     
  }
  .partwo {
   padding-left:2rem;
  padding-right:2rem;
  background-color: black;
  height: 8vh;

  display: flex;
  justify-content: flex-start;
  align-items: center;
  a{
    color: white;
    text-decoration: none;
    padding: 1rem .5rem;
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

 


@media screen and (max-width: 1069px) {
    
  .partone{
     height: 12vh;
     background-color: #eef3fb;
     display: flex;
     flex-direction: row;
     justify-content: center;
     align-items: center;
     justify-content: space-between;
     padding-left:3rem;
  padding-right:3rem;
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
       p{
         width: 14rem;
       }
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
        width: 15rem;
        justify-content: space-between;
        flex-direction: row;
     }
     
     
  }
  .partwo {
   padding-left:3rem;
  padding-right:3rem;
  background-color: black;
  height: 8vh;

  display: flex;
  justify-content: flex-start;
  align-items: center;
  a{
    color: white;
    text-decoration: none;
    padding: 1rem .5rem;
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

@media screen and (max-width: 421px) {
    
  .partone{
     height: 12vh;
     background-color: #eef3fb;
     display: flex;
     flex-direction: row;
     justify-content: center;
     align-items: center;
     justify-content: space-between;
     padding-left:3rem;
  padding-right:3rem;
     .leftdiv{
       a{
       color: #ed088c;
       text-decoration: none;
       font-size: 1.5rem;
        }
        span{
          color: #005699;
        }
     }
     .rightdiv{
       p{
         width: 14rem;
       }
       .icn{
       width:2rem;
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
        width: 15rem;
        justify-content: space-between;
        flex-direction: row;
     }
     
     
  }
  .partwo {
   padding-left:3rem;
  padding-right:3rem;
  background-color: black;
  height: 8vh;

  display: flex;
  justify-content: flex-start;
  align-items: center;
  a{
    color: white;
    text-decoration: none;
    padding: 1rem .5rem;
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


@media screen and (max-width: 375px) {
    
  .partone{
     height: 12vh;
     background-color: #eef3fb;
     display: flex;
     flex-direction: row;
     justify-content: center;
     align-items: center;
     justify-content: space-between;
     padding-left:2rem;
  padding-right:2rem;
     .leftdiv{
       a{
       color: #ed088c;
       text-decoration: none;
       font-size: 1.3rem;
        }
        span{
          color: #005699;
        }
     }
     .rightdiv{
       p{
         width: 14rem;
       }
       .icn{
       width:1.8rem;
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
        width: 15rem;
        justify-content: space-between;
        flex-direction: row;
     }
     
     
  }
  .partwo {
   padding-left:3rem;
  padding-right:3rem;
  background-color: black;
  height: 8vh;

  display: flex;
  justify-content: flex-start;
  align-items: center;
  a{
    color: white;
    text-decoration: none;
    padding: 1rem .5rem;
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


}


</style>
