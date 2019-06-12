const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var sql="select * from bhs_hg_ms";
  pool.query(sql,[],(err,result)=>{
    var arr=[];
    for(var i=1;i<=result.length;i++){
      arr.push(i);
    }
    var n=Math.floor(Math.random()*arr.length);
    var str=arr[n];
    arr.splice(n,1);
    for(var j=1;j<9;j++){
      var m=Math.floor(Math.random()*arr.length);
      str+=","+arr[m];
      arr.splice(m,1);
    }
    var sql2="select * from bhs_hg_ms where hgid in ("+str+")";
    pool.query(sql2,[],(err,result2)=>{
      if(err)throw err;
      res.send(result2);
    })
  })
})
// router.get("/",(req,res)=>{
//   var sql="select * from bhs_hg_ms limit 0,9";
//   pool.query(sql,[],(err,result)=>{
//     if(err)throw err;
//     res.send(result);
//   })
// })

module.exports=router;