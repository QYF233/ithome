//页面加载调用
window.onload=function(){
    //每1秒刷新时间
    setInterval("NowTime()",1000);
}
function NowTime(){
    //获取年月日
    var time=new Date();
    var year=time.getFullYear();
    var month=time.getMonth();
    var day=time.getDate();

    //获取时分秒
    var h=time.getHours();
    var m=time.getMinutes();
    var s=time.getSeconds();

    //检查是否小于10
    day=check(day);
    h=check(h);
    m=check(m);
    s=check(s);
    document.getElementById("nowtime").innerHTML=+year+"-"+(month+1)+"-"+day+"  "+h+":"+m+":"+s;
}
//时间数字小于10，则在之前加个“0”补位。
function check(i){
    //方法一，用三元运算符
    var num;
    i<10?num="0"+i:num=i;
    return num;

    //方法二，if语句判断
    //if(i<10){
    //    i="0"+i;
    //}
    //return i;
}
// function checkd(i){
//     //方法一，用三元运算符
//     var num;
//     i<10?num="0"+i:num=i;
//     return num;
//
//     //方法二，if语句判断
//     //if(i<10){
//     //    i="0"+i;
//     //}
//     //return i;
// }