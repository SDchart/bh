$(function(){
//获得地址栏中?后的查询字符串部分，按等号一分为二，取后半部分。
    var hgid=location.search.split("=")[1];
//只有地址栏中提供了hgid时，才发送请求
    if(hgid!==undefined){
        $.ajax({
            url:"http://localhost:3000/item",
            type:"get",
            data:{hgid},
            dataType:"json",
            success:function(result){
                console.log(result);
                var {product,pics,tips}=result;
                console.log(pics,tips);
                var {hgname,hguptime,hgprice,cont}=product;
                console.log(cont);
                var uptime=hguptime.slice(0,10);
                $("head>title").html(hgname);
                $(".bclist>ul>li:last-child").html(hgname);
                $(".bhs_main_title>span").html(hgname);
                $("#hgprice").html(`${hgprice}円`);
                $("#uptime").html(uptime);
                $(".bx-viewport").html(`<img src="${pics[0].hgimg}">`);
                var html="";
                for(var item of pics){
                    console.log(item);
                    html+=`<li><a href="#"><span><img src="${item.hgimg}"></span></a></li>`;
                }
                $("#bhs_gallery_thumbs").html(html);
                var html="";
                html+=`<p>${cont}<br>`;
                for(var item of tips){
                    console.log(item);
                    html+=`■ ${item.tip}<br>`;
                }
                $(".bhs_detail_explain").html(html);
            }
        })
    }else{
        alert("请提供商品编号?lid=n")
    }
})