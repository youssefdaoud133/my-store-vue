<template ref="main">
  <div class="maincon">
      <div v-if="checkloadtem" class="onload">Loading.....</div>
      <div class="leftdiv">
          <img :src="srcpicture" alt="">
      </div>
      <div v-show="waqitel" class="rightdiv">
          <div class="mainbox">
              <div :dcatgory="dcatgory" class="ctg">{{dcatgory}}</div>
              <div :dtitle="dtitle" class="title"><p>{{dtitle}}</p></div>
              <div :dprice="dprice" class="price">
                  <p>EGP {{dprice}}</p>
              </div>
              <div class="selctcount">
                  <select v-model="countumproduct" >
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                  </select>
                  <button  @click.once="$store.commit('increaseCounter'); addproduct()" >ADD TO BAG</button>
              </div>
              <div :ddisc="ddisc" class="disc"><p>{{ddisc}}</p></div>
          </div>
      </div>
  </div>
  
</template>

<script>
import { onMounted, ref, watch } from '@vue/runtime-core'
import { useStore } from 'vuex'
import axios from "axios";
// import { RouterLink, useLink } from 'vue-router'
// import OneProduct from "../../components/OneProduct.vue"
import {  useRoute } from 'vue-router'
export default {
    name: "ProductDetails",
    // components:{OneProduct},
    props:["maincontainer"],
    setup(){
        const store = useStore()
        //
            const dtitle = ref(null)
            const dcatgory = ref(null)
            const ddisc = ref(null)
            const srcpicture = ref(null)
            const dprice = ref(null)
            const countumproduct = ref(1)

        //
        // const maincontainer = props.maincontainer
        let checktrueorfalse = ref(false) 
        //
        const route = useRoute()
        const numid = route.params.id
        // const checkimage = ref(null)
        const informations = ref(null)
        let checkload = ref(false)
        let waqitel = ref(false)
        let checkloadtem = ref(true)
        let check =  function(){ }; 
        // let title = informations.value.title
        const roottitle = ref(null)
        let getdataoneprduct =  () =>{
        axios
        .get(`https://fakestoreapi.com/products/${numid}`)
        .then(response => ( informations.value = response.data));
        }
       
        document.onreadystatechange = () => {
        if (document.readyState == "complete") {
            console.log('Page completed with image and files!')
            // checkimage.value = informations.value.image
            // console.log(checkimage)
            // fetch to next page or some code
                         console.log(informations)
                         checkload.value = true

            
        }}
        // const mneulapi = []
        // let countproduct = store.getters.getcountproduct
        const countproductplus = () => {store.commit("increaseCounter")}
        const addproduct = () =>{
            if(checktrueorfalse.value === false){
            store.getters.getproducts.push({
                title: dtitle.value,
                sourceimage: srcpicture.value,
                price: countumproduct.value * dprice.value,
                countumproduct: countumproduct.value,
                id: store.state.id ++
            })
            store.state.allprice.push(countumproduct.value * dprice.value)

            // console.log(countproduct)
            console.log(store.getters.getproducts)
            checktrueorfalse.value = true
            countproductplus
            // console.log(countproduct)
            // console.log(store.state.allprice)
            }
           
        }
        
        
        onMounted(() => {
             getdataoneprduct()
            //  roottitle.value.textContent = informations.title
            //  console.log(informations.value.title)
            setTimeout(function(){
                   console.log(informations.value); 
                checkloadtem.value = false
                waqitel.value = true
               dtitle.value = informations.value.title
               dcatgory.value = informations.value.category
               ddisc.value = informations.value.description
               srcpicture.value = informations.value.image
               dprice.value = informations.value.price            
               
               }, 2000);
        })
        watch(checkload,() =>{
            // if(checkload.value === true){
               
            // }
        })
        // watch(informations, () => {
        
        // });

     
        
        return{numid,checktrueorfalse,countumproduct,addproduct,informations,check,checkload,roottitle,dtitle,dcatgory,ddisc,srcpicture,dprice,checkloadtem,waqitel}
    }
}
</script>
<style lang="scss" scoped>
.maincon{
    // background-color: blue;
    height: 70vh;
    padding-left:8rem;
    padding-right:8rem;
    display: grid;
    grid-template-columns: 1fr 1fr;
    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 65%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 70%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}
//@at-root















@media screen and (max-width: 1179px) {
 .maincon{
    // background-color: blue;
    height: 70vh;
    padding-left:5rem;
    padding-right:5rem;
    display: grid;
    grid-template-columns: 1fr 1fr;
    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 65%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 70%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}   
}
@media screen and (max-width: 1179px) {
 .maincon{
    // background-color: blue;
    height: 70vh;
    padding-left:2rem;
    padding-right:2rem;
    display: grid;
    grid-template-columns: 1fr 1fr;
    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 65%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 70%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}   
}

@media screen and (max-width: 986px) {
 .maincon{
    // background-color: blue;
    min-height: 120vh;
    padding-left:2rem;
    padding-right:2rem;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr 1fr 1fr;
    gap: 3rem;
    

    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 45%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 120%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}   
}

@media screen and (max-width: 701px) {
 .maincon{
    // background-color: blue;
    min-height: 120vh;
    padding-left:1rem;
    padding-right:  1rem;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr 1.9fr .7fr;
    gap: 3rem;
    

    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 45%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 120%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}   
}

@media screen and (max-width: 601px) {
 .maincon{
    // background-color: blue;
    min-height: 100vh;
    padding-left:0;
    padding-right:  0;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr .5fr ;
    gap: 3rem;
    

    .ctg{
        position: absolute;
        background-color: #ed088c;
        top: -19px;
        color: white;
        left: -36px;
        width: 10rem;
        height: 2rem;
        display: flex;
        font-size: 1.1rem;
        justify-content: center;
        align-items: center;
       font-family: "Poppins",sans-serif;

    }
    .leftdiv{
        // background-color: red;
        
        display: flex;
        justify-content: center;
        align-items: center;
        img{
            width: 45%;
        }
        }
    .rightdiv{
        // background-color: blueviolet;
        display: flex;
        justify-content: center;
        align-items: center;
        .mainbox{
            position: relative;
            background-color: #eef3fb;
            height: 100%;
            width: 80%;
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 2fr 1fr 1.5fr 1fr;
            padding: .5rem;
            .title{
            // background-color: red;
            display: flex;
            align-items: center;
            font-size: 1.8rem;
            font-family: "Poppins",sans-serif;
            font-weight: bold;
            p{
                text-align: start;
                color: #005699;
            }
            
            }
            .price{
                // background-color: blue;
                display: flex;
                justify-content: start;
                align-items: center;
                p{
                   font-size: 1.8rem;
                   font-family: "Poppins",sans-serif;
                   font-weight: bold;
                   color:#ed088c ;
                }
                }
            .selctcount{
                // background-color: wheat;
                display: flex;
                justify-content: start;
                align-items: center;
                gap: 15px;
                select{
                    padding: .8rem 1.1rem;
                    font-size: .9rem;
                    color:#005699 ;
                    border: 1.5px solid rgb(168, 167, 167);
                    background: none;
                     box-shadow: none;
                     outline: none;
                }
                button{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background-color: #333;
                    color: white;
                    border: none;
                    cursor: pointer;
                }
                button:hover{
                     padding: .8rem 1.9rem;
                    font-size: .9rem;
                    background:none;
                    color: #333;
                    border: 1.5px solid #333;
                    cursor: pointer;
                }
            }
            .disc{
             display: flex;
                justify-content: start;
                align-items: center;
                p{
                    text-align: start;
                    color: black;
                                       font-family: "Poppins",sans-serif;

                }
            }
        }
    }
}   
}
</style>