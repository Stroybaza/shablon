<?php
$colors = array('1'=>'yellow-head',
                    '2'=>'green-head',
                    '3'=>'purple-head',
                    '4'=>'red-head');
$color_number = 0;

if (isset($w_categories)) {
	foreach ($w_categories as $w_category) {
    $color_number = $color_number + 1;
    if($color_number > 4) $color_number = 1;
	?>

        <?php if (isset($w_category["products"])) { ?>
        <div class="box">
          <div class="box-heading <?php echo $colors[$color_number]; ?>   "> <strong><a  style="color:white" class="categoriesOnMainPage" href="<?php echo $w_category["href"]; ?>"><?php echo $w_category["heading_title"]; ?></a></strong></div>
          <div class="box-content">
            <div class="box-product">
              <?php foreach ($w_category["products"] as $product) { ?>
              <div class="productWrapper">
                <?php if ($product['thumb']) { ?>
                <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                <?php } ?>
                <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                <?php } ?>

            <div class="cart">
              <input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="module-button" />
              <div class="wishlist">
                <a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"></a>
              </div>
              <div class="compare">
                <a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"></a>
              </div>
            </div>

              </div>
              <?php } ?>
            </div>
          </div>
        </div>
        <?php } ?>

<?php
	} // foreach ($w_categories as $w_category) {
} // if (isset($w_categories)) {
?>