<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language">
    <?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] == $language_code) { ?>
			<p title="<?php echo $text_language; ?>"><?php echo $language['name']; ?></p>
		<?php } ?>
		<?php } ?>
		<?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] != $language_code) { ?>
    <a style="background-image: url(image/flags/<?php echo $language['image']; ?>);" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();">
			<?php echo $language['name']; ?>
		</a>
    <?php } ?>
		<?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
