var leftPic=document.querySelector("div.leftPic");
var rightPic=document.querySelector("div.rightPic");
var loginPanel=document.querySelector("div.bhs_loginPanel");
var registerPanel=document.querySelector("div.bhs_registerPanel");
$("li.bhs_header_aside_lang_en")[0].onclick=function () {
    leftPic.setAttribute("style","animation: trans1_1 1.3s forwards");
    rightPic.setAttribute("style","animation: trans2_1 1.3s forwards");
    loginPanel.setAttribute("style","animation: loginPanel 0.7s 1.3s forwards");
};
$("div.bhs_login_esc")[0].onclick=function () {
    leftPic.setAttribute("style","animation: trans1 1.3s 0.7s forwards");
    rightPic.setAttribute("style","animation: trans2 1.3s 0.7s forwards");
    loginPanel.setAttribute("style","animation: loginPanel_1 0.7s forwards");
};
$("div.bhs_register_esc")[0].onclick=function () {
    leftPic.setAttribute("style","animation: trans1 1.3s 0.7s forwards");
    rightPic.setAttribute("style","animation: trans2 1.3s 0.7s forwards");
    registerPanel.setAttribute("style","animation: registerPanel_1 0.7s forwards");
};
$("button.bhs_toRegister_btn")[0].onclick=function () {
    loginPanel.setAttribute("style","animation: loginPanel_1 0.7s forwards");
    registerPanel.setAttribute("style","animation: registerPanel 0.7s 0.7s forwards");
};
$("button.bhs_toLogin_btn")[0].onclick=function () {
    registerPanel.setAttribute("style","animation: registerPanel_1 0.7s forwards");
    loginPanel.setAttribute("style","animation: loginPanel 0.7s 0.7s forwards");
}
$("#bhs_gallery_thumbs").on("click","img",function(){
    $(".bx-viewport>img").attr("src",`${this.src}`);
});
$(".bx-wrapper").mouseover(function(){
    console.log($(".bx-viewport>img"));
    $(".bx-viewport>img").css("width",1200);
    $(".bx-viewport>img").css("height",1200);
});
$(".bx-wrapper").mouseout(function(){
    $(".bx-viewport>img").css("width",475);
    $(".bx-viewport>img").css("height",475);
    $(".bx-viewport>img").css("left",0);
    $(".bx-viewport>img").css("top",0);
});
$("#bhs_gallery_main").mousemove(function(e){
    $(".bx-viewport>img").css("left",-e.offsetX*725/475);
    $(".bx-viewport>img").css("top",-e.offsetY*725/475);
});