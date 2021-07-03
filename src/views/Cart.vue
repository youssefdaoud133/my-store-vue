<template>
  <div ref="maincontainer" class="about">
    <div class="partone">
      <p>My Shopping Bag ({{$store.state.countproduct}} Items)</p>
    </div>
    <div class="parttwo">
      <div  class="one">
        <div class="childloop" ref="childloop">
            <CartFainal  v-for="cardproduct in cardproducts" :countumproductf="cardproduct.countumproduct" :key="cardproduct.id" :idf="cardproduct.id" :sourceiamgef="cardproduct.sourceimage" :pricef="cardproduct.price" :titlef="cardproduct.title"/>
        </div>
      </div>
      <div class="two">
        <div class="txtdet">
          <span>Order Summary</span>
        </div>
        <div class="boxcheck">
          <div class="onedivp">
            <p>Subtotal</p>
          <p>EGP {{$store.state.allprice.reduce((accumulator = 0,currentValue = 0) =>{
                  
                    return accumulator + currentValue;
                  
                
                }, 0)}}</p>          </div>
          <div class="twodivp">
            <p>Delivery</p>
            <p>EGP {{defaultpricedilvary}}</p>
          </div>
          <div class="threedivp">
            <p>Order Total</p>
            <p>EGP {{$store.state.allprice.reduce((accumulator = 0,currentValue = 0) =>{
                  
                    return accumulator + currentValue;
                  
                
                }, 0) + defaultpricedilvary}}</p>
          </div>
          <div class="btndiv">
            <button @click.once="$store.commit('resetallthing'); removeproduct()">CHECKOUT</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { ref } from '@vue/reactivity'
import { onMounted } from '@vue/runtime-core'
import { useStore } from 'vuex'
import CartFainal from '../components/CartFainal.vue';

export default {
  components: {
    CartFainal
    
  },
  setup(){
  const maincontainer = ref(null)
 const store = useStore()
     //fuction click
        
        onMounted(() =>{
          console.log(childloop.value.children)
        })
      const removeproduct = () =>{
        childloop.value.remove()
      }
      const removeoneproduct = () =>{
        console.log(cardproducts.price)
        store.state.allprice.push(-cardproducts.countumproduct * cardproducts.price)
      }
        
        //
        const cardproducts = store.getters.getproducts
        const defaultpricedilvary = 50
        const childloop = ref(null)
        const titleinfo = ref(null)

  return{maincontainer,CartFainal,cardproducts,defaultpricedilvary,childloop,removeproduct,titleinfo,removeoneproduct}
}
}
</script>


<style lang="scss" scoped>
.about{
  display: grid;
  grid-auto-columns: 1fr;
  grid-auto-rows: 1.5fr 4fr;
  height: 70vh;
  padding-left:13rem;
  padding-right:13rem;
  .partone{
    // background-color: violet;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 2rem;
    p{
      font-size: 1.7rem;
      color: black;
      font-family: "Poppins",sans-serif;
      font-weight: bold;
    }
  }
  .parttwo{
    // background-color: yellow;
    display: grid;
    grid-template-rows:1fr;
    grid-template-columns: 6fr 3fr;
    gap: .5rem;
 
    .two{
      // background-color: brown;
      height: 23rem;
      .txtdet{
        height: 5rem;
        // background-color: aqua;
        color: black;
        display: flex;
        justify-content: start;
        align-items: center;
        font-size: 1.3rem;
        font-weight: bold;        
      }
      .boxcheck{
        height: 18rem;
        // background-color: salmon;
        border: 1px solid #ccc;
        padding: 1.5rem;
        display: grid;
        grid-template-rows: 1.3fr 1.3fr 2fr 2.8fr;
        grid-template-columns: 1fr;
        .onedivp{
          // background-color: blue;
         display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
        }
        .twodivp{
          // background-color: burlywood;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
         border-bottom: 1px solid #ccc;
        }
        .threedivp{
          // background-color: chartreuse;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
          p{
            font-weight: bold;
            font-size: 1rem;
          }
        }
        .btndiv{
          // background-color: cornflowerblue;
            display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         button{
           background-color: black;
           border:none ;
           color: white;
           padding: 1rem 6rem;
           cursor: pointer;
         }
        }
  
      }
    }
  }
}
@media screen and (max-width: 1434px) {
  
.about{
  display: grid;
  grid-auto-columns: 1fr;
  grid-auto-rows: 1.5fr 4fr;
  height: 70vh;
  padding-left:13rem;
  padding-right:13rem;
  .childloop{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .partone{
    // background-color: violet;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 2rem;
    p{
      font-size: 1.7rem;
      color: black;
      font-family: "Poppins",sans-serif;
      font-weight: bold;
    }
  }
  .parttwo{
    // background-color: yellow;
    display: grid;
    grid-template-rows:1fr 1fr;
    grid-template-columns: 1fr;
    gap: .5rem;
    
 
    .two{
      // background-color: brown;
      height: 23rem;
      .txtdet{
        height: 5rem;
        // background-color: aqua;
        color: black;
        display: flex;
        justify-content: start;
        align-items: center;
        font-size: 1.3rem;
        font-weight: bold;        
      }
      .boxcheck{
        height: 18rem;
        // background-color: salmon;
        border: 1px solid #ccc;
        padding: 1.5rem;
        display: grid;
        grid-template-rows: 1.3fr 1.3fr 2fr 2.8fr;
        grid-template-columns: 1fr;
        .onedivp{
          // background-color: blue;
         display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
        }
        .twodivp{
          // background-color: burlywood;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
         border-bottom: 1px solid #ccc;
        }
        .threedivp{
          // background-color: chartreuse;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
          p{
            font-weight: bold;
            font-size: 1rem;
          }
        }
        .btndiv{
          // background-color: cornflowerblue;
            display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         button{
           background-color: black;
           border:none ;
           color: white;
           padding: 1rem 6rem;
           cursor: pointer;
         }
        }
  
      }
    }
  }
}
}

@media screen and (max-width: 1112px) {
  
.about{
  display: grid;
  grid-auto-columns: 1fr;
  grid-auto-rows: 1.5fr 4fr;
  height: 70vh;
  padding-left:2rem;
  padding-right:2rem;
  .childloop{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .partone{
    // background-color: violet;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 2rem;
    p{
      font-size: 1.7rem;
      color: black;
      font-family: "Poppins",sans-serif;
      font-weight: bold;
    }
  }
  .parttwo{
    // background-color: yellow;
    display: grid;
    grid-template-rows:1fr 35%;
    grid-template-columns: 1fr;
    gap: .5rem;
    .one{
            display: flex;
      justify-content: center;
      align-items: center;
    }
 
    .two{
      // background-color: brown;
      height: 23rem;
      .txtdet{
        height: 5rem;
        // background-color: aqua;
        color: black;
        display: flex;
        justify-content: start;
        align-items: center;
        font-size: 1.3rem;
        font-weight: bold;        
      }
      .boxcheck{
        height: 18rem;
        // background-color: salmon;
        border: 1px solid #ccc;
        padding: 1.5rem;
        display: grid;
        grid-template-rows: 1.3fr 1.3fr 2fr 2.8fr;
        grid-template-columns: 1fr;
        .onedivp{
          // background-color: blue;
         display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
        }
        .twodivp{
          // background-color: burlywood;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
         border-bottom: 1px solid #ccc;
        }
        .threedivp{
          // background-color: chartreuse;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
          p{
            font-weight: bold;
            font-size: 1rem;
          }
        }
        .btndiv{
          // background-color: cornflowerblue;
            display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         button{
           background-color: black;
           border:none ;
           color: white;
           padding: 1rem 6rem;
           cursor: pointer;
         }
        }
  
      }
    }
  }
}
}

@media screen and (max-width: 468px) {
  
.about{
  display: grid;
  grid-auto-columns: 1fr;
  grid-auto-rows: 1.5fr 4fr;
  height: 70vh;
  padding-left:2rem;
  padding-right:2rem;
  .childloop{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  .partone{
    // background-color: violet;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 2rem;
    p{
      font-size: 1.4rem;
      color: black;
      font-family: "Poppins",sans-serif;
      font-weight: bold;
    }
  }
  .parttwo{
    // background-color: yellow;
    display: grid;
    grid-template-rows:1fr 35%;
    grid-template-columns: 1fr;
    gap: .5rem;
    .one{
            display: flex;
      justify-content: center;
      align-items: center;
    }
 
    .two{
      // background-color: brown;
      height: 23rem;
      .txtdet{
        height: 5rem;
        // background-color: aqua;
        color: black;
        display: flex;
        justify-content: start;
        align-items: center;
        font-size: 1.3rem;
        font-weight: bold;        
      }
      .boxcheck{
        height: 18rem;
        // background-color: salmon;
        border: 1px solid #ccc;
        padding: 1.5rem;
        display: grid;
        grid-template-rows: 1.3fr 1.3fr 2fr 2.8fr;
        grid-template-columns: 1fr;
        .onedivp{
          // background-color: blue;
         display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
        }
        .twodivp{
          // background-color: burlywood;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
         border-bottom: 1px solid #ccc;
        }
        .threedivp{
          // background-color: chartreuse;
           display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         justify-content: space-between;
          p{
            font-weight: bold;
            font-size: 1rem;
          }
        }
        .btndiv{
          // background-color: cornflowerblue;
            display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
         button{
           background-color: black;
           border:none ;
           color: white;
           padding: 1rem 6rem;
           cursor: pointer;
         }
        }
  
      }
    }
  }
}
}
</style>