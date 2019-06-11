$(function(){
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(html){
            $(html).replaceAll("#bhs_header");
            // $(`<link rel="stylesheet" href="css/header.css"/>`).appendTo("head")
        }
    })
})