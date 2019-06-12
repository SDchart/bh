$(window).on("load",function(){
    var $leftPic=$("div.leftPic");
    var $rightPic=$("div.rightPic");
    var $loginPanel=$("div.bhs_loginPanel");
    var $registerPanel=$("div.bhs_registerPanel");
    $("li.bhs_header_aside_lang_en").click(function () {
        $leftPic.attr("style","animation: trans1_1 1.3s forwards");
        $rightPic.attr("style","animation: trans2_1 1.3s forwards");
        $loginPanel.attr("style","animation: loginPanel 0.7s 1.3s forwards");
    });
    $("div.bhs_login_esc").click(function () {
        $leftPic.attr("style","animation: trans1 1.3s 0.7s forwards");
        $rightPic.attr("style","animation: trans2 1.3s 0.7s forwards");
        $loginPanel.attr("style","animation: loginPanel_1 0.7s forwards");
    });
    $("div.bhs_register_esc").click(function () {
        $leftPic.attr("style","animation: trans1 1.3s 0.7s forwards");
        $rightPic.attr("style","animation: trans2 1.3s 0.7s forwards");
        $registerPanel.attr("style","animation: registerPanel_1 0.7s forwards");
    });
    $("button.bhs_toRegister_btn").click(function () {
        $loginPanel.attr("style","animation: loginPanel_1 0.7s forwards");
        $registerPanel.attr("style","animation: registerPanel 0.7s 0.7s forwards");
    });
    $("button.bhs_toLogin_btn").click(function () {
        $registerPanel.attr("style","animation: registerPanel_1 0.7s forwards");
        $loginPanel.attr("style","animation: loginPanel 0.7s 0.7s forwards");
    });
    $("#bhs_gallery_thumbs").on("click","img",function(){
        $(".bx-viewport>img").attr("src",`${this.src}`);
    });
    $(".bx-wrapper").mouseover(function(){
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
    (function(){
        // var arr=["slide1","slide2","slide3","slide4","slide5","slide6"];
        // var n=1;
        // setInterval(function(){
        //     var m=n%6;
        //     $(`#${arr[m-1]}`).prop("checked",false);
        //     $(`#${arr[m]}`).prop("checked",true);
        //     n++;
        // },4000)
        setInterval(function(){
            console.log($("div.container>input:checked").attr("id"));
            if($("div.container>input:checked").attr("id")=="slide6"){
                $("div.container>input:checked").prop("checked",false);
                $("div.container>input#slide1").prop("checked",true);
            }else{
                $("div.container>input:checked").prop("checked",false).next().prop("checked",true);
            }
        },4000)
    })();
});