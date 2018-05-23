$(document).ready(function($){
	//淡隐淡现选项卡切换
	$("#expertTab").tabso({
	cntSelect:"#expertcon",
	tabEvent:"mouseover",
	tabStyle:"fade"
	});
    //客户案例添加虚影
	$(".clientList .icon").hover(function() {
	   // $("#orderedlist li:last").hover(function() {
		$(this).next().show();
		}, function() {
		$(this).next().hide() ;
	});
	//幻灯片切花效果（幻灯片已删除）
	$(function(){
		$('.flexslider').flexslider({
			directionNav: true,
			pauseOnAction: false
		});
	});
	//
	jQuery.jqtab = function(tabtit,tab_conbox,shijian) {
		$(tab_conbox).find(".clist").hide();
		$(tabtit).find("li:first").addClass("cur").show(); 
		$(tab_conbox).find(".clist:first").show();
		$(tabtit).find("li").bind(shijian,function(){
		  	$(this).addClass("cur").siblings("li").removeClass("cur"); 
			var activeindex = $(tabtit).find("li").index(this);
			$(tab_conbox).children().eq(activeindex).show().siblings().hide();
			$('body').scrollTop(560);
			return false;
		});
	};
	/*调用方法如下：*/
	$.jqtab("#tabs","#tab_conbox","click");	
	//页面跳转时定位
	if(window.location.hash){
		var targetScroll = $(window.location.hash).offset().top - 80;
		$("html,body").animate({ scrollTop:targetScroll },300);
	}
	$(window).scroll(function(){
		var $this = $(this);
		var targetTop = $(this).scrollTop();
		var footerTop = $(".footer").offset().top;
		var height = $(window).height();
		if (targetTop >= 557){
			$("#menubox").addClass("s");
		} else{
			$("#menubox").removeClass("s");
		}
	});
	//
	$('.dfree_list li').hover(function(){
		$(".dfree_layer", this).stop().animate( { bottom:'0px'} ,{ queue:false,duration:300 } );
		$(".dfree_title", this).stop().hide();
		}, function() {
		$(".dfree_layer", this).stop().animate( { bottom:'-180px' },{ queue:false,duration:300 } );
		$(".dfree_title", this).stop().show();
	});
	//
	$(".personal").hover(function() {
			// $("#orderedlist li:last").hover(function() {
				$(".personal .tab").show();
			}, function() {
				$(".personal .tab").hide() ;
	});
	//右侧返回顶部的图标插件
	$("#leftsead a").hover(function(){
		if($(this).prop("className")=="wechat_img"){
			$(this).children("img.hides").show();
		}else{
			$(this).children("img.hides").show();
			$(this).children("img.shows").hide();
			$(this).children("img.hides").animate({marginRight:'0px'},'slow'); 
		}
	},function(){ 
		if($(this).prop("className")=="wechat_img"){
			$(this).children("img.hides").hide('slow');
		}else{
			$(this).children("img.hides").animate({marginRight:'-143px'},'slow',function(){$(this).hide();$(this).next("img.shows").show();});
		}
	});
	$("#top_btn").click(function(){if(scroll=="off") return;$("html,body").animate({scrollTop: 0}, 1200);});
	//判断滑到顶部按钮的位置是否隐藏
	$(window).scroll(function () {
			var scrollHeight = $(document).height();
			var scrollTop = $(window).scrollTop();
			var $windowHeight = $(window).innerHeight();
			scrollTop > 200 ? $("#top_btn").fadeIn(400).css("display","block") : $("#top_btn").fadeOut(400);			
			$bottomTools.css("bottom", scrollHeight - scrollTop - $footerHeight > $windowHeight ? 40 : $windowHeight + scrollTop + $footerHeight + 40 - scrollHeight);
	});
	//合作客户
	$(".clientList .icon").hover(function() {
		// $("#orderedlist li:last").hover(function() {
		$(this).next().show();
		    }, function() {
			$(this).next().hide() ;
	});
});
