//设备判断与切换
function IsPC() {
    //用户设备信息
    var userAgentInfo = window.navigator.userAgent;
    //允许访问的设备
    var Agents = ["Android", "iPhone",
        "SymbianOS", "Windows Phone"];
    var flag = true;
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) {
            flag = false;
            break;
        }
    }
    return flag;
}
//移动端
if(!IsPC()) {
	//点击之后跳转地址
	document.getElementById('meMore').setAttribute('href','http://weixin.sogou.com/weixinwap?ie=utf8&type=1&t=1470327675980&query=PhotoArtLife&pg=webSearchList&_sug_=n&_sug_type_=')
} else {
	//PC端
	document.getElementById('meMore').setAttribute('href','http://weixin.sogou.com/weixin?type=1&query=PhotoArtLife&ie=utf8&s_from=input&_sug_=n&_sug_type_=1&w=01015002&oq=&ri=0&sourceid=sugg&sut=0&sst0=1497413187374&lkt=0%2C0%2C0&p=40040108')
}
//首页版本切换-弹框提示
swal({
  html: true,
  title: '新版本上线了，来观摩一下么?<p>当前版本2017及之后 / 老版本2016及之前</p><br/><p>3秒后系统会默认为你选择老版本</p>',
  type: 'info',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  cancelButtonText: '先老的吧',
  confirmButtonText: '去啊Go',
  closeOnConfirm: false,
  closeOnCancel: false,
  timer: 3000
},function(isConfirm){
  if (isConfirm) {
    swal({
      html: true,
      type: 'success',
      title: '1秒后自动跳转中...',
      text: '',
      showConfirmButton: false
    },setTimeout(function() {
        window.location.href = 'http://kquanr.com/2016-now'
    },1000));
  } else {
    swal({
      html: true,
      type: 'warning',
      title: '您主动或系统默认选择了老版本:)',
      text: '3秒后自动关闭',
      confirmButtonText: '好的，OK',
      timer: 2000
    });
  } 
});
//各页版本提示
document.getElementById('version').addEventListener("click", function(){
    swal({
      html: true,
      timer: 3500,
      title: 'Hey，欢迎访问 PhotoArtLife<a href="javascript:;" style="display: block;text-decoration: none;color: #09bfac;font-weight: 400;">version: 1.x</a>',
      text: '这是2016年及之前的老版本，<a href="http://kquanr.com/2016-now" style="border:none;color: rgba(222, 67, 23, 0.76);font-weight: 400;">新版本 </a><br />可在此或首页选择访问（3秒后自动关闭）',
      imageUrl: 'http://kquanr.com/images/now1.png',
      confirmButtonText: '好的，OK'
    });
});