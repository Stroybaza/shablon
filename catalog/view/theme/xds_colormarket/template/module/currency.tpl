<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency">
	
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
		<?php if ($currency['symbol_left']) { ?>
    <p title="<?php echo $text_currency; ?>"><?php echo $currency['title']; ?></p>
    <?php } else { ?>
    <p title="<?php echo $text_currency; ?>"><?php echo $currency['title']; ?></p>
    <?php } ?>
		<?php } ?>
		<?php } ?>
		
    <?php foreach ($currencies as $currency) { ?>
		<?php if ($currency['code'] != $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['title']; ?></a>
    <?php } else { ?>
    <a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['title']; ?></a>
		<?php } ?>
    <?php } ?>
    <?php } ?>
		
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
