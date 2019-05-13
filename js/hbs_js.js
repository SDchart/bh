var loginBtn=document.querySelector("li.bhs_header_aside_lang_en");
var loginEscBtn=document.querySelector("div.bhs_login_esc");
var registerEscBtn=document.querySelector("div.bhs_register_esc");
var toRegisterBtn=document.querySelector("button.bhs_toRegister_btn");
var toLoginBtn=document.querySelector("button.bhs_toLogin_btn");
var leftPic=document.querySelector("div.leftPic");
var rightPic=document.querySelector("div.rightPic");
var loginPanel=document.querySelector("div.bhs_loginPanel");
var registerPanel=document.querySelector("div.bhs_registerPanel");
loginBtn.onclick=function () {
    leftPic.setAttribute("style","animation: trans1_1 1.3s forwards");
    rightPic.setAttribute("style","animation: trans2_1 1.3s forwards");
    loginPanel.setAttribute("style","animation: loginPanel 0.7s 1.3s forwards");
};
loginEscBtn.onclick=function () {
    leftPic.setAttribute("style","animation: trans1 1.3s 0.7s forwards");
    rightPic.setAttribute("style","animation: trans2 1.3s 0.7s forwards");
    loginPanel.setAttribute("style","animation: loginPanel_1 0.7s forwards");
};
registerEscBtn.onclick=function () {
    leftPic.setAttribute("style","animation: trans1 1.3s 0.7s forwards");
    rightPic.setAttribute("style","animation: trans2 1.3s 0.7s forwards");
    registerPanel.setAttribute("style","animation: registerPanel_1 0.7s forwards");
};
toRegisterBtn.onclick=function () {
    loginPanel.setAttribute("style","animation: loginPanel_1 0.7s forwards");
    registerPanel.setAttribute("style","animation: registerPanel 0.7s 0.7s forwards");
};
toLoginBtn.onclick=function () {
    registerPanel.setAttribute("style","animation: registerPanel_1 0.7s forwards");
    loginPanel.setAttribute("style","animation: loginPanel 0.7s 0.7s forwards");
}
// 验证
