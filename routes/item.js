const express=require("express")
const router=express.Router();
const pool=require("../pool")

//app.use("/details",Details)
//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
router.get("/",(req,res)=>{
  var hgid=req.query.hgid;
  var output={
    product:{},
    pics:[],
    tips:[]
  }
  if(hgid!==undefined){
    var sql1=`select * from bhs_hg_ms where hgid=?`;
    pool.query(sql1,[hgid],(err,result)=>{
      if(err)throw err;
      output.product=result[0];
    })
    var sql2=`select * from bhs_hg_ms_pic where hgmsid=?`;
    pool.query(sql2,[hgid],(err,result)=>{
      if(err)throw err;
      output.pics=result;
    })
    var sql3=`select * from bhs_hg_ms_tip where hgmsid=?`
    pool.query(sql3,[hgid],(err,result)=>{
      if(err)throw err;
      output.tips=result;
      res.send(output);
    })
  }else{
    res.send(output);
  }
})

module.exports=router;