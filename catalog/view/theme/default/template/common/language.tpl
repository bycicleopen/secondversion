<?php if (count($languages) > 1) { ?>
<div class="pull-left ">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
  <div class="btn-group input_select select-wrap_lang">
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
        <?php echo $language['name']; ?>

    <?php } ?>
    <?php } ?>
        <i class="fa fa-caret-down"></i>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
      <li>
          <button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>">
              <?php echo $language['name']; ?>
          </button>
      </li>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>