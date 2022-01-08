$(document).ready(function ($) {
  //微信提示框
  $(".wechat").on("click", function () {
    layer.open({
      type: 1,
      title: "微信扫一扫(或微信里长按识别二维码)",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "420px"], //宽高
      content:
        '<div class="img_wechat"><img src="http://www.kquanr.com/jiacheng/img/wechat.jpg" alt="请检查您的网络连接哟"><p>欢迎关注山东嘉诚人力官方微信平台，您可以在线查看最新消息哟！</p></div>',
    });
  });
  //导航提示页面
  // $('.foot_map').on('click', function(){
  // layer.open({
  // type: 2,
  // title: '百度地图移动导航页',
  // shadeClose: true,
  // shade: 0.8,
  // area: ['380px', '90%'],
  // content: 'http://map.baidu.com/mobile/webapp/search/search/qt=inf&uid=a736c98765d445a4b23c811f/newmap=1&sharecallbackflag=poiDetailPage&t=1444820742' //iframe的url
  // });
  // });
  //iframe层-弹出多媒体
  $(".slide_video").on("click", function () {
    layer.open({
      type: 2,
      title: false,
      area: ["630px", "360px"],
      shade: 0.8,
      closeBtn: false,
      shadeClose: true,
      content: "http://player.youku.com/embed/XOTE3MDAxNzI4",
    });
    layer.msg("点击播放器外遮罩层任意处关闭视频");
  });
  //捕获页works 1-6
  $(".main1").on("click", function () {
    layer.open({
      type: 1,
      title: "人事档案资源托管",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "470px"], //宽高
      content:
        '<div class="main_text"><p>1：有专业的人力资源机构提供服务，明确档案的去向，不再为找不到档案而发愁。</p><p>2：人事代理满一年后，按照国家规定办理转正定级，确立干部身份，计算工龄，转为人事档案，进而可以申报专业职称，正常晋升，不办理人事代理派遣回原籍的档案不具备这些材料和职称申报晋升的条件，同时会影响以后的人事调动户籍迁移。</p><p>3：人事档案是考取公务员、事业编制、国企单位、考研、出国政审的重要参考凭证。</p><img src="img/main_img1.jpg" alt="加载中"></div>',
    });
  });

  $(".main2").on("click", function () {
    layer.open({
      type: 1,
      title: "网签代理与档案托管",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "480px"], //宽高
      content:
        '<div class="main_text">要求须知与办理条件：<p>1：应届毕业生以及派遣期内的毕业生（二次派遣期限为三年，改派期限为两年）</p><p>2：非师范类毕业生，须认真阅读人事代理协议；</p><p>3：在<a href="//www.sdbys.cn" target="_blank">山东高校毕业生就业信息网</a>注册并激活账号，提供账号和密码进行签约；</p><p>4：毕业前已和其他单位签约的，需和原单位解约，再进行签约; 毕业后的需和原单位解约，并出具解除就业协议(加盖原单位公章)；</p><p>5：适用于未就业（指网上未签约）又想拥有干部身份、工龄的毕业生，毕业后选择考研的毕业生，毕业后回原籍的毕业生，已就业选择离职的毕业生，准备毕业一年后参加公务员、事业编、国有企业招考的毕业生，提供考研政审、公务员政审、出国政审、转正定级、干部身份、专业职称评审及晋升等重要凭证。</p></div>',
    });
  });

  $(".main3").on("click", function () {
    layer.open({
      type: 1,
      title: "户口管理与人才引进服务",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "480px"], //宽高
      content:
        '<div class="main_text">户籍办理条件：<p>1：应届毕业生及派遣期内的毕业生，户籍在学校或者原籍，本科以上学历，报到证、毕业证书、学位证书齐全；</p><p>2：户籍为单身集体户，不能办理结婚手续；</p><p>3：济南集体户可以正常买房，办理护照、港澳通行证等，购房不受90平落户限制，可直接办理市内迁移（条件：1.商品房2.购房合同3.全额发票4.物业入住证明）；</p><p>4：符合以下条件可以办理人才引进落户服务：全日制本科及本科以上学历，具有学校毕业时签发的毕业证和学位证。具有毕业时省人力资源和社会保障厅签发的报到证。2010年之后毕业。未婚人员。<br>(集体户是单身户)可以从原籍取出户口迁移证(我单位无法出具准迁证)<br>提示：可解决已购房但是房子小于90平米无法落户的问题。</p></div>',
    });
  });

  $(".main4").on("click", function () {
    layer.open({
      type: 1,
      title: "党员关系管理",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "460px"], //宽高
      content:
        '<div class="main_text"><p>1：填写申请，接收应往届毕业生党组织关系，负责预备党员的转正；</p><p>2：提交党组关系转入介绍信原件复印件及党员信息采集表；</p><p>3：提交个人入党材料；</p><p>4：按时组织支部党员参加学习活动，传达上级文件精神。</p><img src="img/main_img2.jpg" alt="加载中"></div>',
    });
  });

  $(".main5").on("click", function () {
    layer.open({
      type: 1,
      title: "党员网上组织生活",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "420px"], //宽高
      content:
        '<div class="main_text"><p>1：网络在线学习</p><p>2：支部活动相册</p><p>3：支部活动视频</p><p>4：电子档案系统</p><img src="img/main_img3.jpg" alt="加载中"></div>',
    });
  });

  $(".main6").on("click", function () {
    layer.open({
      type: 1,
      title: "相关业务办理通道说明",
      scrollbar: true,
      skin: "layui-layer-rim", //加上边框
      area: ["350px", "480px"], //宽高
      content:
        '<div class="main_text">毕业派遣、改派、二次派遣流程与区分，办理第三方缴费通道：<p>1：毕业派遣：须填写托管内容（档案 党员 户口）、姓名、性别、身份证号、学校、院系、专业、学历、毕业年份、山东高校毕业生就业信息网用户名、密码、户籍所在地、QQ号、亲友电话、民族、填表日期；</p><p>2：改派须填写托管内容（档案 党员 户口）、姓名、性别、身份证号、学校、专业、学历、毕业年份、山东高校毕业生就业信息网用户名、密码、户籍所在地、QQ号、亲友电话、民族、填表日期<br>提示：改派需现场提交报到证原件、与原单位解除就业协议证明(加盖单位公章)</p><p>3：二次派遣须填写托管内容（档案 党员 户口）、姓名、性别、身份证号、学校、专业、学历、毕业年份、山东高校毕业生就业信息网用户名、密码、户籍所在地、QQ号、亲友电话、民族、填表日期；<br>提示：二次派遣需需现场提交报到证原件。</p><p>4：填表申请后请直接链接到第三方支付平台进行网上缴费。</p></div>',
    });
  });
});
//电话提示栏
function tel() {
  if (
    navigator.userAgent.match(
      /(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i
    )
  ) {
    return;
  } else {
    layer.alert(
      '亲，在手机里面打开可以直接拨号哟 <br>请拨打 <a href="tel:15069069579">15069069579</a>',
      { icon: 6 }
    );
  }
}
