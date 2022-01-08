$(document).ready(function () {
  //新链接嵌套格式
  //弹出即全屏
  $(".web_lofter").click(function () {
    location.href = "http://www.lofter.com/app/photoartlife";
  });
  $(".web_mall").click(function () {
    location.href = "/1.x/project/demo/mall";
  });
  $(".web_jiacheng2").click(function () {
    location.href = "/1.x/project/demo/jiacheng2";
  });
  $(".web_jiacheng1").click(function () {
    location.href = "/1.x/project/demo/jiacheng1";
  });
  $(".web_edu").click(function () {
    location.href = "/1.x/project/demo/kaoshi";
  });
  $(".web_feidajie").click(function () {
    location.href = "/1.x/project/demo/feidajie";
  });
  $(".web_hiyo").click(function () {
    location.href = "/1.x/project/demo/hiyo";
  });
  $(".web_baihua").click(function () {
    location.href = "/1.x/project/demo/baihua";
  });
  // $('.web_jingnan').click(function () {
  //     layer.open({
  //         type: 2,
  //         title: '景楠老师微官网',
  //         shadeClose: true,
  //         shade: 0.8,
  //         area: ['380px', '90%'],
  //         content: '/jingnan' //iframe的url
  //     });
  // });

  //不同颜色标签提示弹窗
  $(".color1").click(function (event) {
    layer.msg("昨晚憧憬千条路，明早起来走原路！");
  });
  $(".color2").click(function (event) {
    layer.msg("人以群分，物以类聚；不以物喜，不以己悲；你若盛开，清风自来！");
  });
  $(".color3").click(function (event) {
    layer.msg(
      "夫以铜为镜，可以正衣冠；以古为镜，可以知兴替；以人为镜，可以明得失！"
    );
  });
  $(".color4").click(function (event) {
    layer.msg("天下太大，惜生命有限，暂唯有亲友梦想和好姑娘不可辜负！");
  });
  $(".color5").click(function (event) {
    layer.msg(
      "对待这个世界与人与事，既不乐观也不悲观，一切随缘随心，祝福所有的美好！"
    );
  });
  $(".color6").click(function (event) {
    layer.msg(
      "生活和时间就好比容器，里面装了许多动态的事件函数，我们随着内外环境不断调整且成长着，只有用心去看去听，才能体会到肉眼识不到的真相！"
    );
  });
  $(".color7").click(function (event) {
    layer.msg("每个人都意味着一个家，请善待自己，珍爱父母和懂你的人！");
  });
  $(".color8").click(function (event) {
    layer.msg(
      "我们本来就是孤独的行者，建议你学会享受她，不要害怕她，慢慢都会好的。"
    );
  });
  $(".color9").click(function (event) {
    layer.msg("有空多和星空对话，记住脚踏实地，没事别随便思考人生！");
  });
});
