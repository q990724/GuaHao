<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  box-sizing: border-box;
  width:100%;
  height:100%;
}
*{
  margin:0;
  padding:0;
}
#nav {
  padding: 0px;
}
#nav a {
  font-weight: bold;
  color: #2c3e50;
}
#nav a.router-link-exact-active {
  color: #42b983;
}
/* html,body{
  width:100%;
  height:100%;
} */
em,i{
  font-style: normal;
}
ul{list-style:none}
a{text-decoration: none;} 
img{vertical-align:top;border:none} 
.clearf:after,
.clearf:before{
    content:"";
    display:block;
    clear:both;
}
</style>
