"use strict";
//宇宙特效-背景切换计时器
var repeat = 1000000;
var timer = setInterval(function () {
  var loopSrc = new Array(
    "./animate/animate1.html",
    "./animate/animate2.html",
    "./animate/animate3.html",
    "./animate/animate4.html",
    "./animate/animate5.html",
    "./animate/animate6.html",
    "./animate/animate7.html",
    "./animate/animate8.html",
    "./animate/animate9.html",
    "./animate/animate10.html"
  );
  if (repeat == 0) {
    clearInterval(timer);
  } else {
    repeat--;
    for (var i = 0; i <= repeat % loopSrc.length; i++) {
      $("#first_iframe").attr("src", loopSrc[i]);
    }
  }
}, 21500);
//弹窗设计
$("#tabWeb").on("click", function (event) {
  layer.open({
    type: 1,
    title: "App端：PGC想看视频与UGC围观社区", //显示标题栏
    closeBtn: false,
    area: "420px;",
    shade: 0.8,
    id: "tab-first", //设定一个id，防止重复弹出
    resize: false,
    btn: ["Close"],
    btnAlign: "d",
    moveType: 1, //拖拽模式，0或者1
    content:
      '<ul style="padding: 45px 20px 20px;margin: 0;list-style: none;"><li style="width: 40%;display: inline-block;text-align: center;"><a href="//xk.miui.com" target="_blank"><img style="width: 70%;" src="/mukuashi/images/xiangkan.png"></a></li><li style="margin:2.6% 0;width: 20%;font-size:50px;color:#ff4248;display: inline-block;text-align: center;vertical-align: top;">+</li><li style="width: 40%;display: inline-block;text-align: center;"><a href="//wg.miui.com" target="_blank"><img style="width: 70%;" src="/mukuashi/images/weiguan.png"></a></li></ul>',
    success: function (layero) {
      //var btn = layero.find('.layui-layer-btn');
      //btn.find('.layui-layer-btn0').attr({
      //  href: 'http://www.layui.com/'
      //  ,target: '_blank'
      //});
    },
  });
});
$("#tabCMS").on("click", function (event) {
  layer.open({
    type: 1,
    title: "前后端：PGC想看审核后台与UGC围观审核后台", //显示标题栏
    closeBtn: false,
    area: "420px;",
    shade: 0.8,
    id: "tab-second", //设定一个id，防止重复弹出
    resize: false,
    btn: ["Close"],
    btnAlign: "d",
    moveType: 1, //拖拽模式，0或者1
    content:
      '<ul style="padding: 45px 20px 30px;margin: 0;list-style: none;"><li style="width: 40%;display: inline-block;text-align: center;"><a href="//mp.xk.miui.com" target="_blank"><img style="width: 70%;" src="/mukuashi/images/pgc-xiangkan.png"></a></li><li style="margin: -2.2% auto;width: 20%;font-size:50px;color:#ff4248;display: inline-block;text-align: center;vertical-align: top;">+</li><li style="width: 40%;display: inline-block;text-align: center;"><a href="//mp.wg.miui.com" target="_blank"><img style="width: 70%;" src="/mukuashi/images/ugc-weiguan.png"></a></li></ul>',
    success: function (layero) {
      //some success code
    },
  });
});
