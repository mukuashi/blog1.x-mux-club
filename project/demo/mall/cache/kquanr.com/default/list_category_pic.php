<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>分类列表</title>
    <meta content="telephone=no" name="format-detection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no">
        <meta name="format-detection" content="telephone=no" />

    <link rel="stylesheet" type="text/css" href="http://kquanr.com/mall/themes/default/__RESOURCE__/css/list_category_view.css">
<style type="text/css">
    body {margin:0px;padding:0px; width:100%; height:100%; background:#fff; color:#fff; }
 .topbar {position:fixed;top:0px;width:100%; height:40px;  background:#f9f9f9; border-bottom:1px solid #e8e8e8; font-size:16px; line-height:40px; text-align:center; color:#666;}
    .topbar a {height:40px; width:15px; display:block; float:left; margin-left:10px;outline:0px; color:#999; font-size:24px;}
 
    .main {position:fixed;top:41px;  height:100%;}
   .search {height:40px;margin-left:30px; color:#ccc; line-height:40px; font-size:14px; text-align:center;}
    #left_container { float:right;width:90px;height:100%;background:#efefef;overflow:auto;}
    #left_container .parent_item {width:94%; padding:0 3%; height:44px;line-height:44px;font-size:14px;float:left; text-align:center; color:#333;}
    #left_container .on {background:#fff;}
    
    #right_container { float:right;margin-right:-90px;width:100%;height:100%; z-index:1;overflow:auto;}
 
    #right_container .inner { margin-right: 90px; background:#fff;height:100%;padding:10px 10px  35px 10px;;}
    #right_container .inner .category_item { width:27%;float:left;padding:5px;color:#333;font-size:13px; text-align: center;}
    #right_container .inner .category_item .name {height:16px;overflow:hidden;width:100%; text-align: center;}
    #right_container .inner img{width:100%;}
    
    #right_container .inner .category_no {width:100%;height:100px;color:#333; text-align: center;}
    
    #right_container .inner .category_title { color:#999;font-size:13px;padding:10px 0 10px 0;width:100%;float:left;}
    
   #right_container .adv { color:#999;font-size:13px;margin:5px;float:left;padding:0;} 
   #right_container .adv img {width:100%;}
   
    
 
/*分类Start*/
.WX_search_txt, .hd_search_txt {
    background-image: url(http://kquanr.com/mall/themes/default/__RESOURCE__/css/images/icon_ss.png)
}

.WX_search1 {
    background-color: #fff;
    height: 44px;
    position: relative;
    z-index: 300;
}

.WX_search_frm1 {
    height: 45px;
    padding: 0 10px 0 11px
}

.WX_search {
    background-color: #fff;
    height: 44px;
    position: relative;
    z-index: 300;
    border-bottom: 1px solid #ddd
}

.WX_search_frm {
    height: 45px;
    padding: 0 10px 0 43px
}

.WX_search_txt {
    float: left;
    width: 100%;
    padding: 0 30px 0 31px;
    display: block;
    height: 30px;
    border-radius: 3px;
    border: 1px solid #eeeeee;

    margin-top: 7px;
    background-color: #fff;
    background-repeat: no-repeat;
    background-position: 8px 50%;
    background-size: 15px 15px;
    -webkit-background-size: 15px 15px;
    -webkit-appearance: none;
    font-size: 14px
}

.WX_search_txt::-webkit-input-placeholder {
    color: #ccc
}

.WX_search_txt::-webkit-search-cancel-button {
    display: none
}

.WX_search_clear {
    width: 22px;
    height: 22px;
    padding: 4px;
    color: rgba(0, 0, 0, 0);
    position: absolute;
    z-index: 2;
    right: 10px;
    top: 7px;
    -webkit-background-origin: content-box;
    background-origin: content-box;
    background-position: -176px -11px
}

.WX_search_frm_focus .WX_search_clear {
    right: 50px
}

.WX_search_btn {
    height: 44px;
    overflow: hidden;
    line-height: 44px;
    font-size: 16px;
    display: block;
    text-align: center;
    color: #007AFF
}

.WX_search_btn_blue {
    height: 30px;
    overflow: hidden;
    line-height: 30px;
    display: inline-block;
    text-align: center;
    background-color: #007AFF;
    color: #FFF;
    margin-top: 7px;
    margin-left: 6px;
    padding: 0 5px;
    border-radius: 4px;
    -webkit-border-radius: 4px;
    font-size: 14px;
}

.WX_me {
    position: absolute;
    top: 0;
    right: 0;
    width: 50px;
    height: 44px
}

.WX_me_btn {
    position: relative;
    height: 100%
}

.WX_me_btn:after {
    float: right;
    content: '\20';
    display: block;
    width: 44px;
    height: 44px;
    background-position: 0 -88px
}

.WX_bar_cate a:after, .WX_bar_back a:after, .WX_btn_search:after, .WX_btn_my:after, .WX_search_clear, .WX_me_btn:after, .WX_me_refresh, .WX_me_pop:before, .WX_me_item a:before {

    background-repeat: no-repeat;
    background-size: 220px 132px;
    -webkit-background-size: 220px 132px
}

</style>
</head>

<body>
	<div id="container">
		 <div class="WX_search1" id="mallHead">

            <form class="WX_search_frm1" action="mobile.php" id="searchForm" name="searchForm">
                <input type="hidden" name="mod" value="mobile"/>
                <input type="hidden" name="do" value="goodlist"/>
                <input type="hidden" name="name" value="shopwap"/>
                <input name="keyword" id="search_word" class="WX_search_txt hd_search_txt_null"
                       placeholder="请输入商品名进行搜索！" type="search" AUTOCOMPLETE="off"/>

                <div class="WX_me">
                    <a href="javascript:;" id="submit" class="WX_search_btn_blue">搜索</a>
                </div>
            </form>
        </div>
     
     <div class="main" >
       
         <div id="right_container">
         	
         			<?php if(!empty($categorypitem)){ ?>
             		<?php if(!empty($categorypitem['thumbadv'])){ ?>
             		<div class="adv" style="height:160px;"  >	<?php if(!empty($categorypitem['thumbadvurl'])){ ?><a href="<?php echo $categorypitem['thumbadvurl']; ?>"><?php } ?><img style="height:160px;" src="<?php echo WEBSITE_ROOT;?>/attachment/<?php echo $categorypitem['thumbadv']; ?>"><?php if(!empty($categorypitem['thumbadvurl'])){ ?></a><?php } ?></div>
             			<?php } ?>
             <div class="inner" >
             	
             	
             	
             
             	
             		
             		<?php if(!empty($categorypitem['thumb'])){ ?>
         <a href="<?php echo mobile_url('goodlist', array('pcate' => $categorypitem['id']))?>"> <div class="category_item"  data-level="2">
   <img src="<?php echo WEBSITE_ROOT;?>/attachment/<?php echo $categorypitem['thumb']; ?>" >
       <div class="name"><?php echo $categorypitem['name']; ?></div>
    </div></a>
    <?php } ?>
    
         	<?php } ?>
             	
             		<?php foreach($categoryson as $cates){ ?>
     <a href="<?php echo mobile_url('goodlist', array('ccate' => $cates['id']))?>">   <div class="category_item"  data-level="2">
     <img src="<?php if(!empty($cates['thumb'])){ ?><?php echo WEBSITE_ROOT;?>/attachment/<?php echo $cates['thumb']; ?><?php }else{ ?>http://kquanr.com/mall/themes/default/__RESOURCE__/images/blank.png<?php } ?>" >
       <div class="name"><?php echo $cates['name']; ?></div>
    </div></a>
         	<?php } ?>

    </div></div>
         <div id="left_container">
         	<?php $ison=true; foreach($categoryparent as $catep){ ?>
         	<a href="<?php echo mobile_url('listCategory',array('ppcateid'=>$catep['id']))?>" ><div class="parent_item 	<?php if(empty($_GP['ppcateid'])){echo $ison?'on':'';}else{echo $_GP['ppcateid']==$catep['id']?'on':'';};$ison=false;?>" data-cate="<?php echo $catep['id']; ?>">
         		 <?php echo $catep['name']; ?></div></a>
     	<?php } ?>
   
    </div>
       
     </div>

    <?php include themePage('footer');?>
     </div>
     
      
     
</body>
<script src="http://kquanr.com/mall/themes/default/__RESOURCE__/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $("#submit").click(function () {
            if ($("#search_word").val()) {
                $("#searchForm").submit();
            } else {
                alert("请输入关键词！");
                return false;
            }
        });
    });
        $('.main').height($(document.body).height()-90);
             
              var bw = $(document.body).width()-90;
             $('#right_container .inner').width( bw);
             $('#right_container .adv').width( bw-8);
             
               $('#right_container  .inner img').each(function(){
                  $(this).height($(this).closest('.category_item').width());
              })
</script>

</html>