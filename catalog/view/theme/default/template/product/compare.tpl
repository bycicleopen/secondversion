<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      
      <?php if ($products) { ?>
      <table class="table table-bordered">
				<div class="title-wrap">
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
				</div>
        <tbody>

          <tr>
            <td></td>
            <?php foreach ($products as $product) { ?>
            <td >


								<!-- product-item -->
								<div class="col-md-4 col-sm-6">
									<div class="compare-product-wrap">
										<article class="product-item product-item_compare">
											<div class="product-image">
												<a href="<?php echo $product['href']; ?>" class="product-image-link">
													<?php if ($product['thumb']) { ?>
														<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
													<?php } ?>
												</a>
											</div>
											<div class="product-text">
												<h3 class="product-title">
													<a href="<?php echo $product['href']; ?>" class="product-title-link"><?php echo $product['name']; ?></a>
												</h3>
												<span class="product-brand"><?php echo $product['manufacturer']; ?></span>
											</div>
											<div class="product-info">
											
												<div class="product-price">
													 <?php if ($product['special']) { ?>
														<span class="product-price_old"><?php echo $product['price']; ?></span>
														<span class="product-price_new"><?php echo $product['special']; ?></span>
												     <?php } else { ?>
													    <span class="product-price_new"><?php echo $product['price']; ?></span>
													 <?php } ?>
												
												</div>
											</div>
											<div class="product-act">
												<a href="<?php echo $product['remove']; ?>" class="product-act-link">
													<span class="btn-icon icon-min">
														<span class="icon">
															<svg>
																<use xlink:href="#icon_cross"></use>
															</svg>
														</span>
													</span>
													<span class="btn-text"><?php echo $button_remove; ?></span>
												</a>
											</div>
										</article>
									</div>

								</div>
 
			  </td>
            <?php } ?>
          </tr>


        </tbody>
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <thead>
          <tr>
            <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $attribute_group['name']; ?></strong></td>
          </tr>
        </thead>
      
	  <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
        <tbody class="param-table-body">
          <tr>
            <td><?php echo $attribute['name']; ?></td>
            <?php foreach ($products as $product) { ?>
            <?php if (isset($product['attribute'][$key])) { ?>
            <td><?php echo $product['attribute'][$key]; ?></td>
            <?php } else { ?>
            <td></td>
            <?php } ?>
            <?php } ?>
          </tr>
        </tbody>
       
	   <?php } ?>
        <?php } ?>

      </table>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>

<!-- Compare Content -->
	<div class="page-content">
		<div class="container">
			<main class="content">
				<div class="title-wrap">
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
				</div>
				
				<div class="row row-collapse">

					<div class="col-sm-3 col-xs-6">
						<div class="compare-param-empty">
						</div>
						<div class="compare-param">
							<table class="param-table param-table_title">
								<tbody class="param-table-body">
									
									<tr>
										<td>Рама</td>
									</tr>
		
								</tbody>
							</table>
						</div>
					</div>
					
					
					
					<div class="col-sm-9 col-xs-6">
						<!-- compare-product-list -->
						<div class="compare-product-list">
							<div class="row row-collapse row-scroll">
								
								
								<?php foreach ($products as $product) { ?>
								<!-- product-item -->
								<div class="col-md-4 col-sm-6">
									<div class="compare-product-wrap">
										<article class="product-item product-item_compare">
											<div class="product-image">
												<a href="#" class="product-image-link">
													<?php if ($product['thumb']) { ?>
													   <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
													<?php } ?>
												</a>
											</div>
											<div class="product-text">
												<h3 class="product-title">
													<a href="#" class="product-title-link"><?php echo $product['name']; ?></a>
												</h3>
												<span class="product-brand"><?php echo $product['manufacturer']; ?></span>
											</div>
											<div class="product-info">
												<div class="product-price">
													<?php if ($product['special']) { ?>
														<span class="product-price_old"><?php $product['price'] ?></span>
														<span class="product-price_new"><?php $product['special'] ?></span>														
													<?php } else { ?>
													   <span class="product-price_new"><?php $product['price'] ?></span>
												    <?php } ?>
												</div>
											</div>
											

											
											
											
											
											
											
											
											
											<div class="product-act">
												<a href="#" class="product-act-link">
													<span class="btn-icon icon-min">
														<span class="icon">
															<svg>
																<use xlink:href="#icon_cross"></use>
															</svg>
														</span>
													</span>
													<span class="btn-text">Удалить</span>
												</a>
											</div>
										</article>
									</div>
										

									
									
									
									
									<!-- product param table -->
									<div class="compare-product-param">
										<table class="param-table">
											<tbody class="param-table-body">
												<tr>
													<td>Алюминий</td>
												</tr>
												
											</tbody>
										</table>
									</div>
								</div>
							
								<?php } ?>
								
								
								
								
						</div>

						</div>
					</div>
				</div>




			</main>
		</div>
	</div>


