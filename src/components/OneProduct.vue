<template>
      <div class="leftdiv">
        <img :src="srcpicc" alt="">  
        
      </div>
      <div class="rightdiv"></div>
</template>

<script>
export default {
    name:"OneProduct",
    props:["srcpicc","pricee","titlee","countt"],
}
</script>

<style>

</style>