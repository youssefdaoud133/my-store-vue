<template>
  <div class="cardbox">
            <div class="idshow">{{pricef}}</div>
            <div class="idshow">{{idf}}</div>
            <div class="imagebox"><img :src="sourceiamgef" alt=""></div>
            <div class="pricetitle">
              <div ref="titleinfo"  class="tit">{{titlef}}</div>
              <div class="pri">EGP {{pricef}}</div>
            </div>
            <div class="sellllect">
              <div @click="removeoneproduct" class="trach"><img class="svgimg" src = "../icons/trash-alt-solid.svg" alt="My Happy SVG"/></div>
              <div class="selctnum">
                <span>
                  {{countumproductf}}
                </span>
              </div>
            </div>
          </div>
</template>

<script>
import { useStore } from 'vuex'
export default {
    name:"CartFainal",
    props:["titlef","pricef","countumproductf",'sourceiamgef',"cardproducts","idf"],
    setup(){
        const store = useStore()
        const removeoneproduct = (e) =>{
          store.state.countproduct--
                store.state.allprice.push(-e.target.parentElement.parentElement.parentElement.childNodes[0].innerHTML)
            const devremove  = e.target.parentElement.parentElement.parentElement
            // const devremovenum  = e.target.parentElement.parentElement.parentElement.childNodes[0].innerHTML
            const devremovetit  = e.target.parentElement.parentElement.parentElement.childNodes[3].childNodes[0].innerHTML
            devremove.remove()
            // store.state.allproducts.splice(devremovenum, 1);
            console.log(e.target.parentElement.parentElement.parentElement.childNodes[3])
            // console.log(store.state.allproducts)

            //
                
                store.state.allproducts =  store.state.allproducts.filter( el => el.title !== devremovetit ) 
                console.log( store.state.allproducts)
                


            //
        }
        return{removeoneproduct}
    }

}
</script>

<style lang="scss" scoped>


.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 50vw;
        height: 30vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 9rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 30rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.7rem;
          }
        }

      }
@media screen and (max-width: 1434px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 70vw;
        height: 30vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 9rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 30rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.7rem;
          }
        }

      }
}
      
@media screen and (max-width: 1112px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 77vw;
        height: 30vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 9rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 30rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.7rem;
          }
        }

      }
}
      
@media screen and (max-width: 962px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 85vw;
        height: 30vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 9rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 20rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.7rem;
          }
        }

      }
}
      
@media screen and (max-width: 690px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 85vw;
        height: 30vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 9rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 15rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.3rem;
          }
        }

      }
}
      
@media screen and (max-width: 628px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 90vw;
        height: 35vh;
        display: grid;
        grid-template-rows:1fr;
        grid-template-columns: 2.5fr 4.5fr 2fr;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 7rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 15rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows:1.5fr 1fr;
          grid-template-columns: 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.3rem;
          }
        }

      }
}
      
@media screen and (max-width:568px) {
  
.cardbox{
    .idshow{
        display: none;
    }
        // background-color: brown;
        border: 1px solid #ccc;
        width: 70vw;
        min-height: 65vh;
       
        display: grid;
        grid-template-rows:1fr .5fr  .5fr;
        grid-template-columns: 1fr ;
        margin-bottom: 1rem;
        .imagebox{
          // background-color: chartreuse;
          display: flex;
          justify-content: center;
          align-items: center;
          img{
            width: 7rem;
          }
        }
        .pricetitle{
          // background-color: chocolate;
          width: 15rem;
          padding: 2rem;
          font-size: 1rem;
          color: black;
           display: flex;
           justify-content: flex-start;
           align-items: flex-start;
            flex-direction: column;
            text-align: start;
        }
        .sellllect{
          // background-color: cornflowerblue;
          display: grid;
          grid-template-rows: 1fr;
          grid-template-columns: 1fr 1fr;
          padding: 2rem;

          span{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                     
                }
          .trach{
            cursor: pointer;
          }
          .svgimg{
            width: 1.3rem;
          }
        }

      }
}
</style>