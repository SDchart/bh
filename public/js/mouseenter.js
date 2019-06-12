/* 鼠标点击特效 */
var a_idx = 0;

    $("body").click(function(e) {
        e.preventDefault();
function RndNum(n){
 var rnd="";
 for(var i=0;i<n;i++)
   rnd+=Math.floor(Math.random()*10);
 return rnd;
}
 let a_num=RndNum(6);
var a_color ="#"+a_num;
var a = new Array("Critical", "Perfect", "Good", "Awesome", "Nice","Boy Next Door");
var $i = $("<span></n>").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
var x = e.pageX,
        y = e.pageY;
        $i.css({
"z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
"top": y - 30,
"left": x,
"position": "absolute",
            "font-size":"20px",
"font-weight": "bold",
"color": a_color
        });
        $("body").append($i);
        $i.animate({
"top": y - 190,
"opacity": 0
        },
        1500,
function() {
            $i.remove();
        });
    });