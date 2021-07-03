<template>
<router-link :to='{name: "ProductDetails" , params :{id: count }}'>
  <div class="maincard">
      <div class="onediv">
          <img :src="srcpic" alt="">
      </div>
      <div class="twodiv">
          <p>{{title}}</p>
      </div>
      <div class="threediv">
          <p>EGP {{price}}</p>
      </div>
  </div>
</router-link>
</template>

<script>
export default {
    name: "CaedApi",
    props:["srcpic","price","title","count"],
    setup(){
        
    }
    
    

}
</script>

<style lang="scss" scoped>
 a{
   
            color: black;
            text-decoration: none;
        
        .maincard{
        // background-color: violet;
        width: 18vw;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        cursor: pointer;
        color: black;
        text-decoration: none;
            .onediv{
                overflow: hidden;
                width: 14rem;
                height: 17rem;
                object-fit: contain;
                img{
                    width: 10vw;
                    transition: .6s ease-in-out;
                    overflow: hidden;
                }
            
            }
             
            .twodiv{
                margin-top: .4rem;
                width: 16vw;
                text-align: center;
                min-height: 3rem;
                font-weight: bold;
            
            }
            .threediv{
                width: 16vw;
                text-align: center;
            height: 3rem;
            text-decoration: none;
            
            
            }
        }
        .maincard:hover{
            .onediv{
                img{
                    width: 12vw;
                    

                }
            }
        }




        //





      @media screen and (max-width: 1196px) {
                
        .maincard{
        // background-color: violet;
        width: 18vw;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        cursor: pointer;
        color: black;
        text-decoration: none;
            .onediv{
                overflow: hidden;
                width: 14rem;
                height: 17rem;
                object-fit: contain;
                img{
                    width: 14vw;
                    transition: .6s ease-in-out;
                    overflow: hidden;
                }
            
            }
             
            .twodiv{
                margin-top: .4rem;
                width: 16vw;
                text-align: center;
                min-height: 3rem;
                font-weight: bold;
            
            }
            .threediv{
                width: 16vw;
                text-align: center;
            height: 3rem;
            text-decoration: none;
            
            
            }
        }
        .maincard:hover{
            .onediv{
                img{
                    width: 16vw;
                    

                }
            }
         }
    } 
    //




      @media screen and (max-width: 972px) {
                
        .maincard{
        // background-color: violet;
        width: 29vw;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        cursor: pointer;
        color: black;
        text-decoration: none;
            .onediv{
                overflow: hidden;
                width: 14rem;
                height: 17rem;
                object-fit: contain;
                img{
                    width: 14vw;
                    transition: .6s ease-in-out;
                    overflow: hidden;
                }
            
            }
             
            .twodiv{
                margin-top: .4rem;
                width: 30vw;
                text-align: center;
                min-height: 3rem;
                font-weight: bold;
            
            }
            .threediv{
                width: 16vw;
                text-align: center;
            height: 3rem;
            text-decoration: none;
            
            
            }
        }
        .maincard:hover{
            .onediv{
                img{
                    width: 16vw;
                    

                }
            }
         }
    } 
    //




      @media screen and (max-width: 750px) {
                
        .maincard{
        // background-color: violet;
        width: 29vw;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        cursor: pointer;
        color: black;
        text-decoration: none;
            .onediv{
                overflow: hidden;
                width: 14rem;
                height: 17rem;
                object-fit: contain;
                img{
                    width: 26vw;
                    transition: .6s ease-in-out;
                    overflow: hidden;
                }
            
            }
             
            .twodiv{
                margin-top: .4rem;
                width: 38vw;
                text-align: center;
                min-height: 3rem;
                font-weight: bold;
            
            }
            .threediv{
                width: 16vw;
                text-align: center;
            height: 3rem;
            text-decoration: none;
            
            
            }
        }
        .maincard:hover{
            .onediv{
                img{
                    width: 28vw;
                    

                }
            }
         }
    } 
 }
</style>