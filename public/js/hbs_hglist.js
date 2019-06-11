$(function(){//DOMContentLoad
//向服务端接口localhost:3000/index发送ajax请求，获得返回的数组对象
    $.ajax({
        url:"http://localhost:3000/hglist",
        type:"get",
        dataType:"json",//让ajax自动将json字符串转为对象，可直接使用
        //onreadystatechange
        success:function(result){
            $(".bhs_search_num").html(`全${result.length}件`);
            var html="";
            //获得商品对象:
            for(var i in result){
                var p=result[i];
                var uptime=p.hguptime.slice(0,10);
                //将商品对象的各个属性，填充到HTML片段中
                html+=`<li>
                        <a href="item.html?hgid=${p.hgid}" target="_blank">
                            <img src="${p.img}" style="margin-top: -142px">
                            <p>
                                <span class="bhs_pd_ttl">${p.hgname}</span>
                                <span class="bhs_pd_price">価格：${p.hgprice} 円（税込）</span>
                                <span class="bhs_pd_deliver">発売日：${uptime}</span>
                            </p>
                        </a>
                    </li>`;
            }
            //将填充好的HTML片段，放入页面中指定的父元素下
            $(".bhs_pdlist_sbs").html(html);
        }
    })
})