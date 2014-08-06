<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xds_colormarket/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!-- CALL ME -->
<script type="text/javascript" charset="utf-8" src="callme/js/callme.js"></script>
<!-- CALL ME -->

<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xds_colormarket/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/xds_colormarket/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->


<script>
  $().ready(function() {
    var $scrollingDiv = $("#cart");
    var $scrollingDiv2 = $("#search");
 
    $(window).scroll(function(){      
      $pos = $(window).scrollTop();
      if($pos>60) {
        $("#cart").css('backgroundImage','url(catalog/view/theme/xds_colormarket/image/grey.png)');
        $("#cart").css("top",$pos + "px");
        $("#cart").css("border-style","solid");
        $("#cart").css("border-width","1px");
        $("#cart").css("border-left","0px");
        $("#search").css('backgroundImage','url(catalog/view/theme/xds_colormarket/image/grey.png)');
        $("#search").css("top",$pos + "px");
        $("#search").css("border-style","solid");
        $("#search").css("border-width","1px");
        $("#search").css("border-right","0px");
        $("#search").css("height","54px");
        $("#search").css("width","680px");
        $("#search").css("left","253px");
        $("#search input").css("width","545px");
        $("#search input").css("marginTop","10px");
        $(".button-search").css("marginTop","10px");
        $("#search input").css("marginLeft","10px");
        $(".button-search").css("marginLeft","10px");
        $("#search input").css("border-color","red");
        $("#search input").css("border-width","2");
        $("#search input").css("border-style","solid");


      }

      else{ 
        $("#cart").css('backgroundImage','');
        $("#cart").css("top","");
        $("#cart").css("border-style","");
        $("#cart").css("border-width","");
        $("#cart").css("border-left","");
        $("#search").css('backgroundImage','');
        $("#search").css("top","");
        $("#search").css("border-style","");
        $("#search").css("border-width","");
        $("#search").css("border-right","");
        $("#search").css("height","");
        $("#search").css("width","");
        $("#search").css("left","");
        $("#search input").css("width","");
        $("#search input").css("marginTop","");
        $(".button-search").css("marginTop","");
        $("#search input").css("marginLeft","");
        $(".button-search").css("marginLeft","");
        $("#search input").css("border-style","");
      }


//      $scrollingDiv2
  //      .stop()
    //    .animate({"marginTop": ($(window).scrollTop()) + "px"}, "slow" );      
    });
  });
</script>


<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="top"><div class="top_center"></div></div>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo">
  <?php if ($home == $og_url) { ?>
  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
  <?php } else { ?>
  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
  <?php } ?>
  </div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <em> 
  <div class="callme_viewform" id="phone">
  +7-3842-45-23-85
  </div>
  <div id="email">
  <a style="font-size:16px;text-decoration: none; color:#f35840" href="mailto:retail@sk42.ru"> retail@sk42.ru</a>
  </em>
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links">
	<a class="home" href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
	<a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
  <a class="compare" href="<?php echo 'http://sk42.ru/index.php?route=product/compare';//$compare; ?>" id="compare-product"><?php echo 'Список сравнения'; if(isset($this->session->data['compare'])) if (count($this->session->data['compare']) > 0) echo ' (' . count($this->session->data['compare']) . ')'; //$text_compare; ?></a>
	<a class="account" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
	<a class="cart" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
	<a class="checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>

<div id="notification"></div>
