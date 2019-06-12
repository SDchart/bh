$(function(){
    var page=location.search.split("=")[1];
    $.ajax({
        url:"http://localhost:3000/hglist/all",
        type:"get",
        dataType:"json",
        success:function(result){
            $(".bhs_search_num").html(`全${result.length}件`);
            var pno=Math.ceil(result.length/8);
            var html="";
            if(page>1){
                html+=`<li class="prev"><a href="gunpla_hg_list.html?page=${page-1}">‹ 前へ</a></li>`;
            }
            for(var i=1;i<=pno;i++){
                if(page==i){
                    html+=`<li><span>${i}</span></li>`;
                }else{
                    html+=`<li><a href="gunpla_hg_list.html?page=${i}">${i}</a></li>`;
                }
            }
            if(page<pno){
                html+=`<li class="next"><a href="gunpla_hg_list.html?page=${parseInt(page)+1}">次へ ›</a></li>`;
            }
            $("ul.pnav").html(html);
        }
    })
    $.ajax({
        url:"http://localhost:3000/hglist",
        type:"get",
        data:{page},
        dataType:"json",
        success:function(result){
            var html="";
            for(var i in result){
                var p=result[i];
                var uptime=p.hguptime.slice(0,10);
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
            $(".bhs_pdlist_sbs").html(html);
        }
    })
})