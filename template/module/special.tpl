
<div class="box">
  <div class="box-heading red-head"><?php echo "<a  class='a_special' href='http://sk42.ru/index.php?route=product/special&path=0'>" . 'ВСЕ АКЦИИ' . '</a>'; ?></div>
  <div class="box-content">
    <div id="carousel-product-special">
			<ul class="jcarousel-skin-product">
				<?php foreach ($products as $product) { ?>
				<li>
					
						<div class="rating-line">
							<div class="rating">
								<img src="catalog/view/theme/xds_colormarket/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
							</div>
							<div class="otzivi">
								<a href="<?php echo $product['href']; ?>"><?php echo $product['reviews']; ?></a>
							</div>
						</div>
						 
						
						<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php if ($product['thumb']) echo $product['thumb']; else  echo '/image/no_image.jpg';?>" alt="<?php echo $product['name']; ?>" /></a></div>
						
						
										


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
						
						<div class="special_cart">
							<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="module-button" />
							<div class="wishlist">
								<a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"></a>
							</div>
							<div class="compare">
								<a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"></a>
							</div>
						</div>

				</li>
				<?php } ?>
			</ul>
    </div>
		<script type="text/javascript"><!--
			$('#carousel-product-special ul').jcarousel({
				vertical: false,
				scroll: 1
			});
			//--></script>
  </div>
</div>
