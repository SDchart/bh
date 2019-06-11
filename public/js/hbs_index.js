$(function(){//DOMContentLoad
//向服务端接口localhost:3000/index发送ajax请求，获得返回的数组对象
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json",//让ajax自动将json字符串转为对象，可直接使用
        //onreadystatechange
        success:function(result){
            console.log(result);
            //获得商品对象:
            var p1=result[0];
            //将商品对象的各个属性，填充到HTML片段中
            var html=`<li class="clearfix">
                        <a href="#">
                            <p class="bhs_info_img"><img src="img/mg_f90.jpg"></p>
                            <p class="bhs_info_cd"><span class="bhs_info_new">New</span><span class="bhs_info_date">2019.04.26</span></p>
                            <p class="bhs_info_txt">MG 1/100 Gundam F90 [2nd: Sep 2019 shipment]</p>
                            <p class="bhs_info_price">&yen; 5600</p>
                        </a>
                    </li>`;
            //将填充好的HTML片段，放入页面中指定的父元素下
            document.getElementById("p1").innerHTML=html;

        }
    })//当ajax请求完成后
    //.then(function(result){//result就是服务端返回的结果

    //})
})//()