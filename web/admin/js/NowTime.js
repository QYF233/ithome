//ҳ����ص���
window.onload=function(){
    //ÿ1��ˢ��ʱ��
    setInterval("NowTime()",1000);
}
function NowTime(){
    //��ȡ������
    var time=new Date();
    var year=time.getFullYear();
    var month=time.getMonth();
    var day=time.getDate();

    //��ȡʱ����
    var h=time.getHours();
    var m=time.getMinutes();
    var s=time.getSeconds();

    //����Ƿ�С��10
    day=check(day);
    h=check(h);
    m=check(m);
    s=check(s);
    document.getElementById("nowtime").innerHTML=+year+"-"+(month+1)+"-"+day+"  "+h+":"+m+":"+s;
}
//ʱ������С��10������֮ǰ�Ӹ���0����λ��
function check(i){
    //����һ������Ԫ�����
    var num;
    i<10?num="0"+i:num=i;
    return num;

    //��������if����ж�
    //if(i<10){
    //    i="0"+i;
    //}
    //return i;
}
// function checkd(i){
//     //����һ������Ԫ�����
//     var num;
//     i<10?num="0"+i:num=i;
//     return num;
//
//     //��������if����ж�
//     //if(i<10){
//     //    i="0"+i;
//     //}
//     //return i;
// }