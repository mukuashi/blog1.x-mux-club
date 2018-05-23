$(document).ready(function($) {
	//未上线项目提示信息
	$('.red_new').click(function(event) {
		//加载层-默认风格
		layer.load();
		//此处设置定时关闭
		setTimeout(function(){
		    layer.closeAll('loading');
		}, 2000, function(){
			layer.alert('见到你真的很高兴', {icon: 6});
		});
		
	});
	//底部弹出网址等信息
	$('.beian').click(function(event) {
		layer.tips('备案认证IP：6789123456', '.beian', {
        tips: [1, '#3595CC'],time: 4000});
	});
	$('.website').click(function(event) {
		layer.alert('亲，下次别忘了我们的网址哟<br><a href="#">www.1234567890.com</a>', {icon: 6});
	});
	//导航提示页面
    $('.foot_map').on('click', function(){
    layer.open({
    type: 2,
    title: '百度地图移动导航页',
    shadeClose: true,
    shade: 0.8,
    area: ['380px', '90%'],
    content: 'http://map.baidu.com/mobile/webapp/search/search/qt=inf&uid=a736c98765d445a4b23c811f/newmap=1&sharecallbackflag=poiDetailPage&t=1444820742' //iframe的url
    });
    });
});
//电话提示栏
function tel() {
   if ((navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i))) {
    return;
   }else{
    layer.alert('亲，在手机里面打开可以直接拨号哟 <br>请拨打 <a href="tel:15069069579">15069069579</a>', {icon: 6});}
}
