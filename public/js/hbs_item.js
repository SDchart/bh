$(function(){
//获得地址栏中?后的查询字符串部分，按等号一分为二，取后半部分。
    var hgid=location.search.split("=")[1];
//只有地址栏中提供了lid时，才发送请求
    if(hgid!==undefined){
        $.ajax({
            url:"http://localhost:3000/item",
            type:"get",
            data:{hgid},
            dataType:"json",
            success:function(result){
                console.log(result);
                //从result中提取出需要的三个成员分别使用
                var {product,pics,tips}=result;
                /*将product中title, subtitle, price, promise属性提取出来放到页面指定位置*/
                console.log(pics,tips);
                var {hgname,hguptime,hgprice}=product;
                console.log(hgname,hguptime,hgprice);
                //46行:h6 id="p-title"
                //49行:a id="p-subtitle"
                //54行:h2 id="p-price"
                //58行:span id="p-promise"
                $("#p-title").html(title);
                $("#p-subtitle").html(subtitle);
                $("#p-price").html(`¥${price.toFixed(2)}`);
                $("#p-promise").html(promise);

                //动态生成多个规格按钮
                //先声明空字符串html等待接收拼接的<a>
                var html="";
                //遍历specs数组中每个规格对象
                for(var sp of specs){
                    //sp:{lid:2, spec:双核i5/8GB内存}
                    //每遍历一个就向html中拼接一个<a>片段
                    html+=`<a class="btn btn-sm btn-outline-secondary ${sp.lid==lid?'active':''}" href="product_details.html?lid=${sp.lid}">${sp.spec}</a>`;
                }
                //console.log(html);
                //70行:<div id="p-specs"
                $("#p-specs").html(html);

                /*放大镜效果*/
                //1. 小图片加载
                //定义空字符串html
                var html="";
                //遍历pics中每个图片对象
                for(var p of pics){
                    //每遍历一个就拼接一个li元素到html中
                    html+=`<li class="float-left p-1">
        <img src="${p.sm}" data-md="${p.md}" data-lg="${p.lg}">
      </li>`
                }
                //35行: <ul id="ulImgs"
                var $ul=$("#ulImgs").html(html)
                //动态计算ul的宽度:pics.length*62
                    .css("width",pics.length*62);


            }
        })
    }else{
        alert("请提供商品编号?lid=n")
    }
})