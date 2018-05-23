/*弹出第三方分享图标*/
#bgshare{background-color:#666;position:absolute;z-index:99;left:0;top:0;display:none;width:100%;height:100%;opacity:0.5;filter: alpha(opacity=50);-moz-opacity: 0.5;}
.bdsharebuttonbox{
    position:absolute;
    text-align:center;
    vertical-align:middle;
    height:auto;
    z-index:100;
}
<div id="bgshare"></div>
<div class="bdsharebuttonbox" style="display:none">
    <a href="#" class="bds_more" data-cmd="more"></a>
    <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
    <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
    <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a>
    <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
    <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
    <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
</div>
<script type="text/javascript">
window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
</script>
//弹出分享接口
    $('.share').on('click', function(){
        $("#bgshare").css({
            display: "block", height: $(document).height()
        });
        var $bdsharebuttonbox = $('.bdsharebuttonbox');
        $bdsharebuttonbox.css({
            //设置弹出层距离左边的位置
            left: ($("body").width() - $bdsharebuttonbox.width()) / 2 - 20 + "px",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $bdsharebuttonbox.height()) / 2 + $(window).scrollTop() + "px",
            display: "block"
        });
    });
    //点击关闭按钮的时候，遮罩层关闭
    $(".close").click(function () {
        $("#bg,.bdsharebuttonbox").css("display", "none");
    });