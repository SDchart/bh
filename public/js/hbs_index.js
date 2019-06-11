$(function(){//DOMContentLoad
//向服务端接口localhost:3000/index发送ajax请求，获得返回的数组对象
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json",//让ajax自动将json字符串转为对象，可直接使用
        //onreadystatechange
        success:function(result){
            var html="";
            //获得商品对象:
            for(var i in result){
                var p=result[i];
                pdate=p.hguptime.slice(0,10);
                //将商品对象的各个属性，填充到HTML片段中
                html+=`<li class="clearfix">
                        <a href="item.html?hgid=${p.hgid}">
                            <p class="bhs_info_img"><img src="${p.img}"></p>
                            <p class="bhs_info_cd"><span class="bhs_info_new">New</span><span class="bhs_info_date">${pdate}</span></p>
                            <p class="bhs_info_txt">${p.hgname}</p>
                            <p class="bhs_info_price">&yen; ${p.hgprice}</p>
                        </a>
                    </li>`;
            }
            //将填充好的HTML片段，放入页面中指定的父元素下
            $("#bhs_news>ul").html(html);
        }
    })//当ajax请求完成后
    //.then(function(result){//result就是服务端返回的结果

    //})
})//()