<template>
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
  <button>sss</button>
</template>

<script>
export default {
    name: "CaedApi",
    props:["srcpic","price","title"],
    setup(){
        
    }
    
    

}
</script>

<style lang="scss" scoped>
.maincard{
// background-color: violet;
width: 18vw;
display: flex;
justify-content: center;
align-items: center;
flex-direction: column;
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
        img:hover{
            width: 12vw;
            

        }
    }
    .twodiv{
        margin-top: .4rem;
        width: 16vw;
        text-align: center;
        height: 3rem;
    
    }
    .threediv{
        width: 16vw;
        text-align: center;
    height: 3rem;
    }
}
</style>