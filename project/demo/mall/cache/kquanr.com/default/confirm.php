<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>订单确认</title>
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/css/confirm.css?v=111" />
	<script type="text/javascript" src="<?php echo RESOURCE_ROOT;?>/script/jquery-1.7.2.min.js"></script>

<style>
body{padding-bottom:55px}

.label_radio input { 
	margin-right: 5px; 
}

.has-js .label_radio { 
	padding-left: 26px; 
}

.has-js .label_radio { 
	background-position: 0 0;
	background: url(http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/images/radio_none.png) no-repeat;
	background-size: 16px 16px;
}
.has-js label.r_on { 
	background-position: 0 0px;
	background: url(http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/images/radio_check.png) no-repeat;
	background-size: 16px 16px;
}
.has-js .label_radio input { 
	position: absolute; 
	left: -9999px; 
} 

.btn-danger {
  color: #ffffff;
  background-color: #d9534f;
  border-color: #d43f3a;
}

.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.428571429;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  -o-user-select: none;
  user-select: none;
}

</style>

    </head>
<body style="min-width: 320px;max-width: 640px;margin:0 auto;">


	 <form id='formorder' name="input" onsubmit="return check()" method="post">
<section class="accounts">
<div class="infobox">
 <h2>收货信息</h2>
 
  <?php if(empty($item['isverify'])) { ?>
   <?php if(!empty($defaultAddress)) { ?>
 
 <p class="address_item"><?php echo $defaultAddress['province'];?> <?php echo $defaultAddress['city'];?> <?php echo $defaultAddress['area'];?> <?php echo $defaultAddress['address'];?> <br/> <?php echo $defaultAddress['realname'];?>, <?php echo $defaultAddress['mobile'];?></p>
<p><button type="button" class="btn btn-danger" onclick="location.href='<?php echo mobile_url('address',array('from'=>'confirm','returnurl'=>urlencode($returnurl)))?>'"><i class="icon-plus"></i>管理收货地址</button></p>
	  <?php } else { ?>
	<p><button type="button" class="btn btn-danger" onclick="location.href='<?php echo mobile_url('address',array('from'=>'confirm','returnurl'=>urlencode($returnurl)))?>'"><i class="icon-plus"></i> 添加收货地址</button></p>
		<?php } ?>
<?php }else{ ?>
<p>联系人：<input type="text" name="verify_address_name" id="verify_address_name" value="" /></p>
<p>联系电话：<input type="text" name="verify_address_tell" id="verify_address_tell" value="" /></p>
<?php } ?>
</div>

 
 	<input type="hidden" name="goodstype" value="<?php echo $goodstype;?>" />
<input type="hidden" name="address" value="<?php echo $defaultAddress['id'];?>" />
 <div class="infobox">
 <h2>配送方式</h2>
 <ul class="payStyle">
  	
 	<?php $ischecked=true; $initdispatchprice=$issendfree==1?0:$d['price']; if(is_array($dispatch)) { foreach($dispatch as $d) { ?>
  				
                                   <li><label><input name='dispatch'  onchange='oncheckboxchange("<?php if($ischecked){$initdispatchprice=$issendfree==1?0:$d['price'];} echo $issendfree==1?0:$d['price']?>");' type="radio"  value="<?php echo $d['id'];?>" <?php echo $ischecked?'checked="checked"':'';$ischecked=false;  ?> /><img src="http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/images/icon-wein.png" /><?php echo $d['dname'];?></label></li>
                          
                        <?php } } ?>
 
  </ul>
</div>

 
<div class="infobox">
 <h2>支付方式</h2>
 <ul class="payStyle">
 	
 	 	<?php $ischecked=true;   if(is_array($payments)) { foreach($payments as $d) { ?>
  				         <?php if(empty($item['isverify'])||(!empty($item['isverify'])&&$d['online']==1)) { ?>
                                   <li><label><input name='payment'  type="radio"  value="<?php echo $d['code']?>" <?php echo $ischecked?'checked="checked"':'';$ischecked=false;  ?> /><img src="http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/images/icon-<?php echo $d['code']?>.png"  /><?php echo $d['name']?></label></li>
                                     <?php } ?>    
                        <?php } } ?>


 	
 
  </ul>
</div>

<?php if(is_array($bonus_list)&& count($bonus_list)>0) {  ?>
<div class="infobox">
 <h2>优惠券</h2>
 <ul class="payStyle">
 	
 	 	<?php if(is_array($bonus_list)) { foreach($bonus_list as $bonus) { ?>
  				
                        	<?php if($bonus['send_type']==3) {?>
  	 
  	  <li><label><input name='bonus'  type="radio"  value="custom"  /><?php echo $bonus['bonus_name']?>，编号：<input name='custom_bonus_sn'  type="text"  value=""  style="width: 40%;;"/></label></li>
      
  	     <?php }else{  ?>
  	                  <li><label><input name='bonus'  type="radio"  value="<?php echo $bonus['bonus_sn']?>"  /><?php echo $bonus['bonus_name']?>[<?php echo $bonus['bonus_sn']?>]</label></li>
                      
  	        <?php } ?>
                        <?php } } ?>
                   <li><label><input name='bonus'  type="radio"  value=""  />无</li>
      

 	
 
  </ul>
</div>
   <?php } ?>
<div class="my-memvers">
  <div class="member-browse">
        <h2 class="member-browse-title"><span>订单详情</span></h2>
        <ul class="member-browse-ul">
        		<?php if(is_array($allgoods)) { foreach($allgoods as $item) { ?>
            <li class="member-browse-li">
                <div class="row member-browse-summey">
                    <a class="member-browse-summey-info" href="<?php echo mobile_url('detail',array('id'=>$item['id']))?>" >                 
                        <div class="member-browse-nt">                           
                            <span class="member-browse-name"> <?php echo $item['title'];?></span>
                        </div>
                    </a>                   
                </div>
              <span class='goodsprice' style="hidden"><?php echo $item['totalprice'];?></span>
                <div class="member-browser-pro-list" >
                    
                    <a class="member-browser-pro-a" href="#"><span class="pro-img">
                        <img src="<?php echo WEBSITE_ROOT;?>/attachment/<?php echo $item['thumb']?>"></span><p class="pro-info"><span class="pro-name">价格：<?php echo $item['totalprice'];?></span><span class="pro-price">数量：<?php echo $item['total'];?><?php if(!empty($item['unit'])) { ?><?php echo $item['unit'];?><?php } ?></strong></span>
                        	 <?php if(!empty($item['optionname'])) { ?>
                        	<br/><span class="pro-price">规格：  <?php echo $item['optionname'];?></span><?php } ?></p>
                    </a>
                    
                </div>
            </li>
				<?php } } ?>
			
			
            
        </ul>
    </div>
	    </div>




<div class="infobox ">
<ul id='infoul' class="otherInfo">
	<li>备注信息：<textarea name="remark" onchange='oninputchange("detail");' style='width:100%;border: none;' type="text" value="" placeholder="亲，还有什么要交待的话，告诉我们吧！" ></textarea></li>
</ul>
</div>



<div class="carFoot"><button type="submit" id='submit'  name="submit" value="yes" style="display: inline-block;float: right;padding: 0 33px;text-align: center;height: 35px;line-height: 35px;margin-right: 10px;color: #fff;background: #e4393c;font-size: 16px;border: none;border-radius: 5px;">提交订单</button><p>合计：<i class="price">&yen;<span id='totalprice'><?php echo $totalprice;?></span><span >元</span></i></p></div>




	
	<input type="hidden" name="token" value="<?php echo $_W['token'];?>" />
</form>
</section>


	<?php include page('footer');?>			





<script src="http://kquanr.com/mall/themes/default/__RESOURCE__/recouse/js/zepto.min.js" type="text/javascript"></script>
<script type="text/javascript">
Zepto(function($){
   var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
   //点击箭头，显示隐藏导航
   $btnLogo.on('click',function(){
     if($btnLogo.parent().hasClass('global-nav--current')){
       navHide();
     }else{
       navShow();
     }
   });
   var navShow = function(){
     $nav.addClass('global-nav--current');
   }
   var navHide = function(){
     $nav.removeClass('global-nav--current');
   }
   
   $(window).on("scroll", function() {
		if($nav.hasClass('global-nav--current')){
			navHide();
		}
	});
})
function get_search_box(){
	try{
		document.getElementById('get_search_box').click();
	}catch(err){
		document.getElementById('keywordfoot').focus();
 	}
}
</script>




        <script language='javascript'>
    
			function changeAddress(){
                location.href = '<?php echo mobile_url('address', array('from'=>'confirm','returnurl'=>urlencode($returnurl)))?>'
            }
            function check(){
            	 	<?php if(empty($item['isverify'])){ ?>
                if($(".address_item").length<=0){
                    alert("请添加收货地址!");
                    return false;
                }      
                <?php }else{ ?>
                	  if($("#verify_address_name").val()==''){
                    alert("请添加联系人!");
                    return false;
                }   
                  if($("#verify_address_tell").val()==''){
                    alert("请添加联系电话!");
                    return false;
                }        
                	<?php } ?>
                	var isdispatch=false;
                for(var i=0;i<document.getElementsByName('dispatch').length;i++)
                {
                	
             				if(document.getElementsByName('dispatch')[i].checked)
             				{
             					isdispatch=true;
             				}
                }
                	
                 if(isdispatch==false)
                 {
                		alert("请选择配送方式");
                		  return false;
                		}
                		
                		  	var ispayment=false;
                for(var i=0;i<document.getElementsByName('payment').length;i++)
                {
                	
             				if(document.getElementsByName('payment')[i].checked)
             				{
             					ispayment=true;
             				}
                }
          
                    if(ispayment==false)
                 {
                		alert("请选择支付方式");
                		  return false;
                		}
          
                 	return true;
            }
       
            function oncheckboxchange(dispatchpricestr){
                var price = 0;
                $(".goodsprice").each(function(){
                    price+=parseFloat($(this).html());
                });
                var dispatchprice = parseFloat(dispatchpricestr);
                if(dispatchprice>0){
                   $("#totalprice").html(price + dispatchprice + " 元 (含运费"+dispatchprice + ")");    
                 
                  $("#dispatchshow").css('display','block');
                  
                  $("#dispatchshow_price").html(dispatchprice);    
                   $("#dispatchshow_name").html($("#dispatch").find("option:selected").attr("dispatchname"));    
 
                }
                else{
                    $("#totalprice").html(price);    
                       $("#dispatchshow").css('display','none');
                }
                
            }
            
            
            oncheckboxchange(<?php echo empty($initdispatchprice)?"0":$initdispatchprice;?>);
 </script>
            
 


</body>
</html>   