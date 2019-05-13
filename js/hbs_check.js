var txtUname=document.querySelector(".bhs_register_uname");
var txtUpwd=document.querySelector(".bhs_register_upwd");
var confirmUpwd=document.querySelector(".bhs_register_confirm");
var txtEmail=document.querySelector(".bhs_register_email");
var txtPhone=document.querySelector(".bhs_register_phone");
txtUname.onblur=function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length>=8&&txt.value.length<=12){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{//否则
        span.innerHTML=`User name:8~12`;
        span.style.color="#ff000d";
    }
};
txtUpwd.onblur=function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length>=6&&txt.value.length<=12){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`User password:6~12`;
        span.style.color="#ff000d";
    }
};
confirmUpwd.onblur=function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length<6||txt.value.length>12){
        span.innerHTML=`Wrong Format`;
        span.style.color="#ff000d";
    }else if(txt.value==txtUpwd.value){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`Inconsistent password`;
        span.style.color="#ff000d";
    }
};
txtEmail.onblur=function(){
    var txt=this;
    var span=txt.nextElementSibling;
    var reg=/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
    if(reg.test(txt.value)){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`Wrong format`;
        span.style.color="#ff000d";
    }
};
txtPhone.onblur=function(){
    var txt=this;
    var span=txt.nextElementSibling;
    var reg=/^1[34578]\d{9}$/;
    if(reg.test(txt.value)){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`Wrong format`;
        span.style.color="#ff000d";
    }
};