<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  // created(){
  //   (function(doc, win) {
  //   var docEl = doc.documentElement,
  //       resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
  //       recalc = function() {
  //           var clientWidth = docEl.clientWidth;
  //           if (!clientWidth) return;
  //           docEl.style.fontSize = 20 * (clientWidth / 320) + 'px';
  //       };
  //   if (!doc.addEventListener) return;
  //   win.addEventListener(resizeEvt, recalc, false);
  //   doc.addEventListener('DOMContentLoaded', recalc, false);
  //   })(document, window);
  // }

}
</script>


<style>
html{
  font-size: 40px;
  height: 100%;
}
@media (min-width:640px){html{font-size:24px;}}
@media (min-width:631px) and (max-width:639px){html{font-size:23.66px;}}
@media (min-width:622px) and (max-width:630px){html{font-size:23.33px;}}
@media (min-width:613px) and (max-width:621px){html{font-size:23px;}}
@media (min-width:604px) and (max-width:612px){html{font-size:22.66px;}}
@media (min-width:595px) and (max-width:603px){html{font-size:22.33px;}}
@media (min-width:586px) and (max-width:594px){html{font-size:22px;}}
@media (min-width:577px) and (max-width:585px){html{font-size:21.66px;}}
@media (min-width:568px) and (max-width:576px){html{font-size:21.33px;}}
@media (min-width:559px) and (max-width:567px){html{font-size:21px;}}
@media (min-width:550px) and (max-width:558px){html{font-size:20.66px;}}
@media (min-width:541px) and (max-width:549px){html{font-size:20.33px;}}
@media (min-width:533px) and (max-width:540px){html{font-size:20px;}}
@media (min-width:524px) and (max-width:532px){html{font-size:19.66px;}}
@media (min-width:515px) and (max-width:523px){html{font-size:19.33px;}}
@media (min-width:506px) and (max-width:514px){html{font-size:19px;}}
@media (min-width:497px) and (max-width:505px){html{font-size:18.66px;}}
@media (min-width:488px) and (max-width:496px){html{font-size:18.33px;}}
@media (min-width:480px) and (max-width:487px){html{font-size:18px;}}
@media (min-width:471px) and (max-width:479px){html{font-size:17.66px;}}
@media (min-width:462px) and (max-width:470px){html{font-size:17.33px;}}
@media (min-width:453px) and (max-width:461px){html{font-size:17px;}}
@media (min-width:444px) and (max-width:452px){html{font-size:17.12px;}}
@media (min-width:435px) and (max-width:443px){html{font-size:16.375px;}}
@media (min-width:426px) and (max-width:434px){html{font-size:16px;}}
@media (min-width:417px) and (max-width:425px){html{font-size:15.66px;}}
@media (min-width:408px) and (max-width:416px){html{font-size:15.33px;}}
@media (min-width:400px) and (max-width:407px){html{font-size:15px;}}
@media (min-width:391px) and (max-width:399px){html{font-size:14.66px;}}
@media (min-width:382px) and (max-width:390px){html{font-size:14.33px;}}
@media (min-width:374px) and (max-width:381px){html{font-size:14px;}}
@media (min-width:365px) and (max-width:373px){html{font-size:13.66px;}}
@media (min-width:356px) and (max-width:364px){html{font-size:13.33px;}}
@media (min-width:347px) and (max-width:355px){html{font-size:13px;}}
@media (min-width:338px) and (max-width:346px){html{font-size:12.66px;}}
@media (min-width:329px) and (max-width:337px){html{font-size:12.44px;}}
@media (max-width:328px){html{font-size:12px;}}


body{
  background: #f8f8f8;
  width: 26rem;
  margin: 0 auto !important;
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
