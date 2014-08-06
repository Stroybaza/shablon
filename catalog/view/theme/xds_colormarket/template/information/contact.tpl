<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
	<div class="container-content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    
    <div class="contact-info">
      <div class="content">
				<p class="store"><?php echo $store; ?></p>
				<p class="address"><b><?php echo $text_address; ?></b> <?php echo $address; ?></p>
				<?php if ($telephone) { ?>
        <p class="telephone"><b><?php echo $text_telephone; ?></b> <?php echo $telephone; ?></p>
        <?php } ?>
        <?php if ($fax) { ?>
        <p class="fax"><b><?php echo $text_fax; ?></b> <?php echo $fax; ?></p>
        <?php } ?>
			</div>
			
			<h1><?php echo $text_contact; ?></h1>
			
			<div class="content">
				<div class="left">
				<input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" />
				<br />
				<?php if ($error_name) { ?>
				<span class="error"><?php echo $error_name; ?></span>
				<?php } ?>
				</div>

				<div class="right">
				<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>"/>
				<br />
				<?php if ($error_email) { ?>
				<span class="error"><?php echo $error_email; ?></span>
				<?php } ?>
				</div>

				<textarea name="enquiry" cols="40" rows="10" placeholder="<?php echo $entry_enquiry; ?>"><?php echo $enquiry; ?></textarea>
				<br />
				<?php if ($error_enquiry) { ?>
				<span class="error"><?php echo $error_enquiry; ?></span>
				<?php } ?>
				<br />
				
			  <div class="captcha">
					<p><?php echo $entry_captcha; ?></p>
					<div class="captcha-box">
						<img src="index.php?route=account/return/captcha" alt="" />
						<input type="text" name="captcha" value="<?php echo $captcha; ?>"/>
						<?php if ($error_captcha) { ?>
						<span class="error"><?php echo $error_captcha; ?></span>
						<?php } ?>
					</div>
        </div>
				
			</div>
    </div>

    <div class="buttons" style="padding: 0 20px;">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>