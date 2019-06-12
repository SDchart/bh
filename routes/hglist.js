const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var page=req.query.page;
    if(page!==undefined){
        var sql="select * from bhs_hg_ms limit ?,8";
        pool.query(sql,[(page-1)*8],(err,result)=>{
            if(err)throw err;
            res.send(result);
        })
    }else{
        var sql2="select * from bhs_hg_ms limit 0,8";
        pool.query(sql2,[],(err,result)=>{
            if(err)throw err;
            res.send(result);
        })
    }
})
router.get("/all",(req,res)=>{
    var sql="select * from bhs_hg_ms";
    pool.query(sql,[],(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

module.exports=router;