//页头
@common-header-height: 65;
@common-bu-font-size: 20px;
@common-help-font-size: 16px;
@common-ae-color: #E62E04;
@common-tmall-color: #722760;
@common-tbovs-color: #FF4400;
@common-help-color: #337AB7;
//页尾
@common-footer-height: 75;
@common-footer-color: #999;
@common-footer-gutter: 50;
@common-footer-padding: 10px;
//菜单栏
@common-sidebar-width: 80;
@common-sidebar-bg: #212A31;
@common-sidebar-bg-img: -webkit-gradient(linear, 100% 100%, 0% 0%,from(transparent), color-stop(0.25, transparent),color-stop(0.25, hsla(0,0%,100%,.12)), color-stop(0.50, hsla(0,0%,100%,.12)),color-stop(0.50, transparent), color-stop(0.75, transparent),color-stop(0.75, hsla(0,0%,100%,.12)), to(hsla(0,0%,100%,.12)));   
@common-sidebar-menu-margin: 3px;
@common-sidebar-menu-padding: 10px;
@common-sidebar-menu-width: 200px;
@common-sidebar-bg-size: 3px 3px;  
@common-sidebar-hover-bg: #4a5e6f;
@common-sidebar-active-bg: #4a5e6f;
@common-sidebar-active-color: #fff;
@common-sidebar-active-shadow: inset 0 0 0 1px #617586,inset 0 0 40px 5px rgba(0,0,0,.3),0 0 2px 1px rgba(0,0,0,.5);
@common-sidebar-click-shadow: inset 0 -1px 0 #617586,inset 0 2px 8px rgba(0,0,0,.5), inset 0 0 40px 5px rgba(0,0,0,.25);
@common-sidebar-color: #999;
//帮助页
@page-help-container-gutter: 30px;
@page-help-list-bg: #337AB7;

/*********body***********/
html, body{
  height: 100%;
}

body{
  padding-left: unit(@common-sidebar-width, px);
  background: #FFF url(../img/bg-body.png);
  &.common-homepage{
    padding-left: 0;
  }
}

/*********实现footer底边布局***********/
.common-container-wrap{
  height: auto; 
  min-height: 100%;
  margin-top: unit( (@common-header-height / -1) , px);
}
.common-container{
  padding-top: unit(@common-header-height, px);
  padding-bottom: unit((@common-footer-height + @common-footer-gutter ), px);
}

/*********页头***********/
.common-header{
  margin: 0;
  background: #FFF;
  padding-bottom: 0;
  box-shadow: 0 2px 4px rgba(35, 82, 123, .1); 
  .row{
    margin-top: 0;
  }
}

.common-logo-ae, .common-logo-tbovs, .common-logo-tmall,.common-logo-help{
    margin-left: @common-bu-font-size;
    line-height: unit(@common-header-height, px);
    font-size: @common-bu-font-size;
    a&:hover{
        text-decoration: none;
        transform: scale(1.2);
    }
}

.common-logo-help{
  width: 50px;
  height:  unit(@common-header-height, px);
  position: relative;
}
.common-logo-help-flag{
  font-size: @common-help-font-size;
  position: absolute;
  top: -15px;
  right: 0;
  background-color: @common-help-color;
  border: none;
  text-align: center;
  color: #fff;
  font-size: 11px;
  font-weight: lighter;
  width: 50px;
  height: 65px;
  -webkit-transition: top 218ms;
  -o-transition: top 218ms;
  transition: top 218ms;
  text-decoration:none;
  i{
    margin-right: 2px;
    vertical-align: baseline;
  }
  &:hover{
    top: 0;
    color: #fff;
    text-decoration:none;
  }
}

.common-logo-help-flag:after {
  position: absolute;
  left: 0;
  bottom: 0px;
  border: 25px solid transparent;
  border-bottom: 12px solid #FFF;
  content: '';
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.common-logo-ae, .common-logo-ae:hover{
  color: @common-ae-color;
}
.common-logo-tmall, .common-logo-tmall:hover{
  color: @common-tmall-color;
}
.common-logo-tbovs, .common-logo-tbovs:hover{
  color: @common-tbovs-color;
}
.common-logo-dos{
  color: #595959;
  height: unit(@common-header-height, px);
  min-width: 119px;
  font-weight: bold;
  padding-left: 130px;
  line-height: 85px;
  background: url(../img/logo.png) left bottom no-repeat;
  &:hover{
    color: #595959;
    text-decoration: none;
  }
}
/*********页尾***********/
.common-footer{
  text-align: center;
  color: @common-footer-color;
  background-image: @common-sidebar-bg-img;
  background-size: @common-sidebar-bg-size;  
  background-color: @common-sidebar-bg;
  height: unit(@common-footer-height, px);
  margin-top: unit((@common-footer-height / -1), px);
  padding-top: @common-footer-padding;
  padding-bottom: @common-footer-padding;
  border-top: 3px solid #E62E04;
  a{
    color: @common-footer-color;
    &:not(:last-child):after{
      content: "|";
      padding: 0 5px;
    }
  }
}
.copyright{
  padding-top: @common-footer-padding;
}

/*********菜单栏***********/
.common-sidebar{
  width: unit(@common-sidebar-width, px);
  height: 100%;
  position: fixed;
  left: 0;
  top: 0;
  z-index: 1080;
  background-image: @common-sidebar-bg-img;
  background-size: @common-sidebar-bg-size;  
  background-color: @common-sidebar-bg;
  color: @common-sidebar-color;
  text-align: center;
  a{
    text-align: center;
    display: inline-block;
    width: 100%; 
    color: @common-sidebar-color;
    &:hover{
      color: #FFF;
      text-decoration: none;
    }
  }
  ul{
    list-style: none;
    padding-left: 0;
    margin-top: 0;
    margin-bottom: 10px;
  }
}

//一级菜单
.main-menus{
  padding: 1px;
  h1{
    margin-top: 5px;
    margin-bottom: 5px;
  }
  > li{
    cursor: pointer;
    padding-top: @common-sidebar-menu-padding;
    padding-bottom: @common-sidebar-menu-padding;
    position: relative;
    text-align: center;
    margin-top: @common-sidebar-menu-margin; 
    //头像
    &:first-child{
      cursor: default;
      padding: 5px;
      padding-bottom: 30px;
    }
    //退出
    &:last-child{
      width: unit((@common-sidebar-width - 2), px);
      position: absolute;
      left: 0;
      right: 0;
      bottom: 0;
      margin: 0 auto;
    }
    &:active, &.active, &:hover:not(:first-child){
      color: @common-sidebar-active-color;
      box-shadow: @common-sidebar-active-shadow;
      background-color: @common-sidebar-active-bg;
      background-image: @common-sidebar-bg-img;
      background-size: @common-sidebar-bg-size; 
    }
    &:hover:not(:first-child){
      h1{
        transform: scale(1.3);
      }
      > ul{
        width: @common-sidebar-menu-width;
      }
    }
  }
}
//二级菜单
.sub-menus{
  width: 0;
  transition: width 0.3s;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: unit(@common-sidebar-width, px);
  background-color: rgba(33, 42, 49, .85);
  background-image: @common-sidebar-bg-img;
  background-size: @common-sidebar-bg-size; 
  li{
    padding-top: @common-sidebar-menu-padding;
    padding-bottom: @common-sidebar-menu-padding;
    border-left: 1px solid #fff; 
    &:not(:last-child){
      border-bottom: 1px dashed #fff;
    }
    &:hover{
      background-color: @common-sidebar-bg;
      background-image: @common-sidebar-bg-img;
      background-size: @common-sidebar-bg-size; 
      color: @common-sidebar-active-color;
      a{
        transform: scale(1.3);
      }
    }
  }
}
/*********首页轮播***********/
@-webkit-keyframes flipInX {
  0% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    -webkit-transition-timing-function: ease-in;
    transition-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    -webkit-transition-timing-function: ease-in;
    transition-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
  }

  100% {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

@keyframes flipInX {
  0% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 90deg);
    -webkit-transition-timing-function: ease-in;
    transition-timing-function: ease-in;
    opacity: 0;
  }

  40% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -20deg);
    -webkit-transition-timing-function: ease-in;
    transition-timing-function: ease-in;
  }

  60% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    transform: perspective(400px) rotate3d(1, 0, 0, 10deg);
    opacity: 1;
  }

  80% {
    -webkit-transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
    transform: perspective(400px) rotate3d(1, 0, 0, -5deg);
  }

  100% {
    -webkit-transform: perspective(400px);
    transform: perspective(400px);
  }
}

.common-dos-display{
  position: relative;
}
.common-dos-display-body{
  -webkit-backface-visibility: visible !important;
  backface-visibility: visible !important;
  -webkit-animation: flipInX 5s linear infinite alternate;
  animation: flipInX 5s linear infinite alternate;
  width: 360px;
  height: 135px;
  padding: 20px;
  font-size: 16px;
  position: absolute;
  left: 8%;
  top: 20%;
  color: #CCC;
  box-shadow: inset 0 0 0 1px #617586;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 15px;
  h4{
    font-size: 24px;
  }
  &:hover{
    color: #FFF;
    text-decoration: none;
  }
}
.common-case-title{
  margin: 30px 10px 20px;
  background: url(../img/dots.gif) repeat-x scroll 0 0;
  background-position: center;
  text-align: left;
  h4{
    font-size: 24px;
    font-weight: bold;
    display: inline;
    padding-right: 10px;
    background: #FFF url(../img/bg-body.png);
  }
}
.common-homepage {
  .owl-carousel{
    margin-bottom: 0;    
    .thumbnail{
      background: #FFF;
      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.35), -4px -4px 8px rgba(0, 0, 0, 0.35);
      border-radius: 0;
      border: 0;
      margin: 10px;
      .caption{
      }
    }
  }
  .container-fluid{
      padding-left: 0;
      padding-right: 0;
  }
}
.common-about{
  .panel{
    border-radius: 0;
    box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
  }
}

/*********帮助文档***********/
.page-help-container{
  margin-top: @page-help-container-gutter;
}
.page-help-container .panel{
    border-radius: 0;
    p{
        text-indent: 2em;
        line-height: 2.5;
        font-size: 15px;
    }
}
.page-help-container .list-group-item:first-child, .page-help-container .list-group-item:last-child{
    border-radius: 0;
}
.page-help-container .list-group-item[id], .page-help-container .list-group-item-text[id]{
  cursor: pointer;
  &:hover{
    color: #FFF;
    background: @page-help-list-bg;
  }
  h4{
    margin-top: 0;
    margin-bottom: 0;
  }
}
.page-help-container .list-group-item-text.active, .page-help-container .list-group-item-text:active{
  color: #FFF;
  background: @page-help-list-bg;
}
.fullscreen {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 0;
  z-index: 9999;
}
.fullscreen .CodeMirror {
  height: 100%;
}
#fullscreenBtn {
  position: absolute;
  top: 20px;
  right: 40px;
  z-index: 10000;
}

.table-container {
    overflow: auto;
}
.table-container table {
    min-width: 100%;
    width: auto;
    margin-left: 0;
}
.table-container th {
    padding-right: 20px !important
}

.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td{
    text-align: center;
    border-right: 1px solid #ddd;
}
table {
    text-align: center;
    border: 1px solid #ddd;
    border-right: none;
}
table.dataTable.no-footer {
    border-bottom: 1px solid #ddd;
}
