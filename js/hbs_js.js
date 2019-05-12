var loginBtn=document.querySelector("li.bhs_header_aside_lang_en");
var escBtn=document.querySelector("div.bhs_login_esc");
var leftPic=document.querySelector("div.leftPic");
var rightPic=document.querySelector("div.rightPic");
var loginPanel=document.querySelector("div.bhs_loginPanel");
loginBtn.onclick=function () {
    leftPic.setAttribute("style","animation: trans1_1 1.3s forwards");
    rightPic.setAttribute("style","animation: trans2_1 1.3s forwards");
    loginPanel.setAttribute("style","animation: loginPanel 0.7s 1.3s forwards");
}
escBtn.onclick=function () {
    leftPic.setAttribute("style","animation: trans1 1.3s 0.7s forwards");
    rightPic.setAttribute("style","animation: trans2 1.3s 0.7s forwards");
    loginPanel.setAttribute("style","animation: loginPanel_1 0.7s forwards");
}