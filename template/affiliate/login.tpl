<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
	<div class="container-content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="login-content">
	<?php echo $text_description; ?>
    <div class="left">
      <div class="content">
			<h2><?php echo $text_new_affiliate; ?></h2>
			<?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button blue-button"><?php echo $button_continue; ?></a></div>
    </div>
    <div class="right">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
					<h2><?php echo $text_returning_affiliate; ?></h2>
					<table>
					<tr>
          <td colspan="2"><input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" /></td>
					</tr>
					<tr>
          <td colspan="2"><input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" /></td>
					</tr>
					<tr>
          <td><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></td>
          <td><input type="submit" value="<?php echo $button_login; ?>" class="button blue-button" /></td>
					</tr>
					</table>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>