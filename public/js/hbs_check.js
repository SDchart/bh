$(".bhs_register_uname").blur(function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length>=8&&txt.value.length<=12){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{//否则
        span.innerHTML=`User name:8~12`;
        span.style.color="#ff000d";
    }
});
$(".bhs_register_upwd").blur(function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length>=6&&txt.value.length<=12){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`User password:6~12`;
        span.style.color="#ff000d";
    }
});
$(".bhs_register_confirm").blur(function(){
    var txt=this;
    var span=txt.nextElementSibling;
    if(txt.value.length<6||txt.value.length>12){
        span.innerHTML=`Wrong Format`;
        span.style.color="#ff000d";
    }else if(txt.value==$(".bhs_register_upwd")[0].value){
        span.innerHTML=`OK`;
        span.style.color="#13ff3a";
    }else{
        span.innerHTML=`Inconsistent password`;
        span.style.color="#ff000d";
    }
});
$(".bhs_register_email").blur(function(){
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
});
$(".bhs_register_phone").blur(function(){
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
});