<template>
<keep-alive>
  <AppHeader />
</keep-alive>
   <router-view />
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}


</style>
<script>
import AppHeader from "@/components/AppHeader.vue";
export default {
  components: {
    AppHeader,
  },
}
</script>