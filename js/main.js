/**
 * Copyright (c) 2015-Now PhotoArtLife All rights reseved.
 * @author Mich | mks572512250@foxmail.com
 * @version 1.0 | 2015-12-01 公共弹窗组件
 **/
$(document).ready(function(){
  //判断打开设备\电话提示栏
  $("#callme").on('click', function() {
    if ((navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i))) {
      return true;
    }else{
      layer.alert('亲，在手机里面打开可以直接操作哟 <br>请搜索 <a href="http://weixin.sogou.com/weixin?type=1&query=PhotoArtLife&ie=utf8&_sug_=n&_sug_type_=" target="_blank">PhotoArtLife</a>', {icon: 6});
      return false;
    }
  });
  //定向链接
  $(".alone").on('click', function(event) {
   location.href="http://weixin.sogou.com/weixin?type=2&query=PhotoArtLife&ie=utf8&_sug_=n&_sug_type_=";
  /* Act on the event */
  });
  //微信提示框
  	//1-公共微信
   $('.wechat').on('click', function(){
    layer.open({
    type: 1,
    title:'微信扫一扫(或微信里长按识别二维码)',
    skin: 'layui-layer-rim', //加上边框
    area: ['350px', '410px'], //宽高
    content: '<div class="img_wechat"><img src="http://www.kquanr.com/arts/images/photoartlife.jpg" alt="请检查您的网络连接哟"><p>微信公众号ID：PhotoArtLife<br>如有问题，可以给我留言哈</p></div>'});
    });
   	//2-个人微信
   $('.private-wechat').on('click', function(){
    layer.open({
    type: 1,
    title:'微信扫一扫(或微信里长按识别二维码)',
    skin: 'layui-layer-rim', //加上边框
    area: ['350px', '410px'], //宽高
    content: '<div class="img_wechat"><img src="http://www.kquanr.com/arts/images/private-wechat.jpg" alt="请检查您的网络连接哟"><p>作者微信ID：mukuashi<br>如有问题，可以给我留言哈。</p></div>'});
    });

   //避免HTML5表单提交失败的验证
    $('#submit').on('click', function(e) {
      //验证手机和用户名
      if($("#name").val() == "") {
        layer.tips('亲，稍微留点联系信息呗', '#name', {
            tips: [1, '#F90']
        });
        $("#name").focus();
        return false;
      }
      // else if(!$("#name").val().match(/^1[3|4|5|8][0-9]\d{4,8}$/)){layer.tips('请输入正确的手机号格式', '#name', { tips: [1, '#0DC7DC'] });}
      
      //验证邮箱
      else if($("#email").val() == "") {
        layer.tips('亲，您忘了留邮箱地址啦', '#email', {
            tips: [1, '#F90']
        });
        $("#email").focus();
        return false;
      }else if(!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
        layer.tips('您的邮箱格式好像填错了吧', '#email', {
            tips: [1, '#0DC7DC']
        });
        $("#email").focus();
        return false;
      }
      //验证留言信息是否为空
      else if($("#message").val() == "") {
        layer.tips('亲，留言多少写一点呗', '#message', {
            tips: [1, '#F90']
        });
        $("#message").focus();
        return false;
      }else{}
    });
    //防止表单重复提交,用户点击提交按钮后给按钮添加disabled属性
    $("input:submit").each(function() {
        var srcclick = $(this).attr("onclick");
        if(typeof(srcclick)=="function"){
        $(this).click(function() {
            if (srcclick()) {
                setdisabled(this);
                return true;
            }
            return false;
        });}
    });
    function setdisabled(obj) {
    setTimeout(function() { obj.disabled = true; }, 100);}
    //end
});