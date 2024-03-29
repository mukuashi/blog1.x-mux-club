<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>商品列表</title>
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="http://kquanr.com/mall/themes/default/__RESOURCE__/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="http://kquanr.com/mall/themes/default/__RESOURCE__/css/list.css" type="text/css"/>
    <style type="text/css">
        .footer_copy{
            display:none;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="paixu">
            <div class="tab">
                <a <?php if($sort==1) { ?>  class="price on"<?php } else { ?>class="price"<?php } ?>
                onclick="location.href='<?php echo $sorturl;?>&sort=1&sortb1=<?php echo $sortb11;?>
                '">销量↓</a>
                <a <?php if($sort==0) { ?>  class="time on"<?php } else { ?>class="time"
                <?php } ?>
                onclick="location.href='<?php echo $sorturl;?>&sort=0&sortb0=<?php echo $sortb00;?>
                '">时间↓</a>
                <a <?php if($sort==2) { ?>  class="renqi on"<?php } else { ?>class="renqi"<?php } ?>
                onclick="location.href='<?php echo $sorturl;?>&sort=2&sortb2=<?php echo $sortb22;?>
                '">人气↓</a>
                <a <?php if($sort==3) { ?>  class="click on"<?php } else { ?>class="click"<?php } ?>
                onclick="location.href='<?php echo $sorturl;?>&sort=3&sortb3=<?php echo $sortb33;?>
                '">价格↓</a>
            </div>
        </div>
        <div style="padding-top:10px;"></div>
        <div class="os_panel">
            <ul class="os_box_list" id="m2Con">
                <?php if(is_array($list)) { foreach($list as $item) { ?>
                <li>
                    <a href="<?php echo mobile_url('detail', array('id' => $item['id']))?>" class="item">
                        <div class="img"><img
                                src="<?php echo WEBSITE_ROOT;?>/attachment/<?php echo $item['thumb'];?>">
                        </div>
                        <div class="txt"><?php echo $item['title']?></div>
                        <div class="buy">
                        <span class="price"><strong><em>¥<?php echo $item['marketprice'];?></em></strong><del>¥
                            <?php echo $item['productprice'];?></del></span>
                        </div>
                    </a>
                </li>
                <?php } } ?>
            </ul>
        </div>
    </div>
    <?php include page('footer');?>
    <?php include themePage('footer');?>
</div>
</body>
</html>