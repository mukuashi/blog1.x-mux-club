
$(function() {
                var $window = $(window),
                window_width = $window.width();
                $('#js_banner, #js_banner_img li').width(window_width);
                new $.Tab({
                    target: $('#js_banner_img li'),
                    effect: 'slide3d',
                    animateTime: 1000,
                    stay: 3500,
                    autoPlay: true,
                    merge: true,
                    prevBtn: $('#js_banner_pre'),
                    nextBtn: $('#js_banner_next')
                });
});
 $(document).ready(function(){
            $(".Logo").css({"top":"-40px"});
            $(".gundong1").click(function(){
                $("html, body").animate({
                    "scroll-top":1170
                },"fast");                
            });
            $("#index_pro_inner").remove();
            $(".index_pro_desc").css("display","none");
            $(".gundong1").click(function(){
                $("html, body").animate({
                    "scroll-top":1170
                },"fast");                
            });
            $(".showText1").hover(function(){
                $(".aboutUs .navPart2CnTitle").html("企业宗旨");
                $(".aboutUs .navPart2Desc").html("专为B2C、B2B等电商提供具有到位的视觉传达与商品导购力度的平面影像，提供工厂化、高效率平面影像方案。");
            });
            $(".showText2").hover(function(){
                $(".aboutUs .navPart2CnTitle").html("企业简介");
                $(".aboutUs .navPart2Desc").html("海右互动隶属济南必普技嘉信息技术有限公司，依托公司优势和多年的积累，我们拥有丰富经验的拍摄和后期团队，强硬的摄影器材，丰富的模特资源，500平米的室内影棚和多处签约外拍基地，我们将从平面影像着手，为您提供高效、完美、适用的方案，与您共成长。");
            });
            $(".showText3").hover(function(){
                $(".aboutUs .navPart2CnTitle").html("服务项目");
                $(".aboutUs .navPart2Desc").html("广告摄影、产品摄影、化妆品摄影、形象模特摄影、服装摄影、皮具摄影、家电摄影、珠宝摄影、建筑摄影、淘宝影视等");
            });
            $(".showText4").hover(function(){
                $(".aboutUs .navPart2CnTitle").html("制作流程");
                $(".aboutUs .navPart2Desc").html("联系客服（详细沟通拍摄需求）-预约拍摄（通过支付宝付款，安全放心）<br />快递宝贝（请快递您需要拍摄的宝贝）-收货（我们会仔细核对宝贝数量<br />）安排拍摄（根据拍摄及后期制作的不同，时间约为3-4天）<br />交付成片（通过阿里旺旺传送成片）<br />交易结束（安全快递您的宝贝，保证二次销售）");
            });
});