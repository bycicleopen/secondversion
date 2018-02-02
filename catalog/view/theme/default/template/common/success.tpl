<?php echo $header; ?>
<div class="container">
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ul class="breadcrumbs-items">
			
			<?php $i = 1; $j = count($breadcrumbs) ?>
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php if($i!=$j) {?>
				<li class="breadcrumbs-item">				
						<a href="<?php echo $breadcrumb['href']; ?>" class="link breadcrumbs-link"><?php echo $breadcrumb['text']; ?></a>
						<?php $i++ ?>
					
					<span class="breadcrumbs-link_next">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_crumbarr"></use>
							</svg>
						</span>
					</span>
				</li>	
				<?php } ?>
			<?php } ?>

				<li class="breadcrumbs-item"><?php echo $heading_title; ?>
					<span class="breadcrumbs-link_next">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_crumbarr"></use>
							</svg>
						</span>
					</span>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="page-content">
<div class="container">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2 class="title contact-info-title"><?php echo $heading_title; ?></h2>
      <span class="text"><?php echo $text_message; ?></span>
     <span class="text">
														<a href="<?php echo $continue; ?>" class="btn btn_act btn_form" >
													
															<span class="btn-text"><?php echo $button_continue; ?></span>
														</a>
														</span>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
</div>
<?php echo $footer; ?>