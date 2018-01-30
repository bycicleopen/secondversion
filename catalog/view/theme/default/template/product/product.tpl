<?php echo $header; ?>
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

<section>
<!-- Item Content -->
	<div class="page-content">
		<div class="container">
			<main class="content">
				<div class="item-title">
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
					<div class="item-addition">
						<div class="item-addition-article"><?php echo $text_model; ?>
							<span class="item-addition-article-number"><?php echo $model; ?></span>
						</div>
						<div class="item-addition-rating">
							<ul class="rating">
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating icon_rating-fill">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
								<li class="rating-list">
									<span class="icon icon_rating">
										<svg>
											<use xlink:href="#icon_star"></use>
										</svg>
									</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="item-content">
					<div class="row">

						<div class="col-lg-9">
							<!-- item top -->
							<div class="item-top">
								<div class="row">
								




								<!-- item photo -->
									<div class="col-lg-7 col-md-6 col-sm-6">
									 <?php if ($thumb || $images) { ?>	
		      <ul class="thumbnails">
           
		   <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
			
			
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
										
									<?php } ?>	
									</div>
									
									
									
									
									
									<div id="product">
									<!-- item information -->
									<div class="col-lg-5 col-md-6 col-sm-6">
										<div class="item-info">
											<!-- size and color -->
									 <?php if ($options) { ?>	
									 <div class="row">
										<?php foreach ($options as $option) { ?>
											<div class="item-info-type">
												<div class="row">
													
													
													
													<!-- size -->		
																<?php if ($option['type'] == 'select') { ?>
																		<!-- size -->
																<div class="col-md-6 col-sm-6">
																
																	<!-- select -->
																		<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
																	
																	<span class="info-type-label"><label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label></span>
																
																	<select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
																	<option value=""><?php echo $text_select; ?></option>
																	<?php foreach ($option['product_option_value'] as $option_value) { ?>
																	<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
																	<?php if ($option_value['price']) { ?>
																	(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																	<?php } ?>
																	</option>
																	<?php } ?>
																	</select>
																	
																	</div>
			
																</div>	
			
																	<?php } ?>
			
													
													
									
														
													
																			<?php if ($option['type'] == 'radio') { ?>
																
																				<!-- color -->
																				<div class="col-md-6 col-sm-6">
																				
																															
																
																				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
																				<span class="info-type-label"><label class="control-label"><?php echo $option['name']; ?></label></span>
																				<div id="input-option<?php echo $option['product_option_id']; ?>">
																				
																				<span class="info-type-color">
																					<?php foreach ($option['product_option_value'] as $option_value) { ?>
																					<span style="background-color:<?php echo $option_value['sort_order']; ?>">
																			
																					<label>
																					<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
																					<?php if ($option_value['image']) { ?>
																					<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
																					<?php } ?> 
					
																					<?php echo $option_value['name']; ?>
																					<?php if ($option_value['price']) { ?>
																					(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
																					<?php } ?>
																					</label>
				
																					</span>
																				
																					<?php } ?>
																				</span>
																					</div>
																				</div>
				
																				
																				</div>		
			
																				<?php } ?>
													
														
													
													
													
													
												</div>
											</div>
											
											
											<?php } ?>
											</div>
											<?php } ?>
											
											
											<!-- price -->
											<div class="item-info-price">
												<div class="row">
													<div class="col-md-6 col-sm-6">
														<!-- price bonus -->
														 <?php if ($special) { ?>
														<div class="info-price-bonus-wrap">
															<span class="info-price-bonus-sum">+<?php echo $benefit; ?><span class="info-price-bonus-currancy">грн</span>
															</span>
															<span class="info-price-bonus-descr">бонус до <?php echo $date_end; ?></span>
														</div>
														<?php } ?>	
													</div>
													<div class="col-md-6 col-sm-6">
														<!-- item price -->
														<div class="info-price-wrap">
														 <?php if ($special) { ?>
															<span class="info-price"><?php echo $special; ?></span>
															<span class="info-price-old"><?php echo $price; ?></span>
														<?php } else { ?>
															
														    <span class="info-price"><?php echo $price; ?></span>	
														<?php } ?>	
														</div>
													</div>
												</div>
											</div>
											<!-- purchase form-->
													<!-- purchase form-->
											<div class="">
												<div class="row">
													<!-- amount -->
													<div class="col-md-6 col-sm-6">
														<div class="info-purchase-count">
															<button class="input_control input_minus">
																<span class="icon icon_control">
																	<svg>
																		<use xlink:href="#icon_minus"></use>
																	</svg>
																</span>
															</button>
															<div class="form-group">
																
																<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
																<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control">
																<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
															</div>
															
															<button class="input_control input_plus">
																<span class="icon icon_control">
																	<svg>
																		<use xlink:href="#icon_plus"></use>
																	</svg>
																</span>
															</button>
														</div>
													</div>
													<!-- button -->
													<div class="col-md-6 col-sm-6">
														<div class="form-group">
														<a  id="button-cart" class="btn btn_act btn_purchase popup-btn">
															<span class="btn-icon">
																<span class="icon">
																	<svg>
																		<use xlink:href="#icon_cart"></use>
																	</svg>
																</span>
															</span>
															<span class="btn-text"><?php echo $button_cart; ?></span>
														</a>
														</div>
													</div>
												</div>
											</div>
											
											<!--end purchase form-->
											
											
											
											<!-- actions -->
											<div class="item-info-actions">
												<div class="row">
													<!-- add to fav and compare -->
													<div class="col-md-6 col-sm-6">
														<div class="info-actions-wrap">
															<a href="#addtofav" class="info-actions-link popup-btn">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_favourite"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">В избранные</span>
															</a>
															<a href="#addtocompare" class="info-actions-link popup-btn">
																<span class="btn-icon">
																	<span class="icon">
																		<svg>
																			<use xlink:href="#icon_compare"></use>
																		</svg>
																	</span>
																</span>
																<span class="btn-text">К сравнению</span>
															</a>
														</div>
													</div>
													<!-- one click cta -->
													<div class="col-md-6 col-sm-6">
														<div class="item-info-oneclick">
															<a href="#oneclick" class="link info-oneclick-link popup-btn">Купить в 1 клик</a>
														</div>
													</div>

													
												</div>
											</div>
											<!-- item bonus -->
											<div class="item-info-bonus">
												<div class="info-bonus-title">
													<span class="btn-icon">
														<span class="icon">
															<svg>
																<use xlink:href="#icon_gift"></use>
															</svg>
														</span>
													</span>
													<span class="info-bonus-text">Специальное предложение</span>
												</div>
												<p class="info-bonus-descr">При покупке велосипеда — в подарок замок!</p>
											</div>
										</div>
									</div>
									</div>
								</div>
							</div>
							
							
							
							<!-- item tabs -->
							<div class="item-tabs">
								<nav class="tabs-nav">
									<ul class="tabs-items">
									
										<li class="tabs-item">
											<a href="#tab1" class="btn btn_default tabs-link is-active">
												<span class="btn-text"><?php echo $tab_attribute; ?></span>
											</a>
										</li>
										
										
										<li class="tabs-item">
											<a href="#tab2" class="btn btn_default tabs-link">
												<span class="btn-text"><?php echo $tab_description; ?></span>
											</a>
										</li>
										
										
										
										<?php if ($review_status) { ?>
										<li class="tabs-item">
											<a href="#tab3" class="btn btn_default tabs-link">
												<span class="btn-text"><?php echo $tab_review; ?></span>
											</a>
										</li>
										<?php } ?>
									</ul>
								</nav>
								<!-- tabs content -->
								<div class="tabs-content-wrap">
									 <?php if ($attribute_groups) { ?>
									<div id="tab1" class="tabs-content is-active">
										<div class="tab-table-wrap">
											<table class="tab-table">
											    <?php foreach ($attribute_groups as $attribute_group) { ?>
												<thead>
												<tr>
													<td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
												</tr>
												</thead>												
												
												<tbody class="tab-table-body">
													
													
													<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
													<tr>													
														<td class="tab-table-property"><?php echo $attribute['name']; ?></td>
														<td><?php echo $attribute['text']; ?></</td>
													</tr>
													<?php } ?>
												</tbody>
												 <?php } ?>
											</table>
										</div>
									</div>
									<?php } ?>
									
									
									
									
									<div id="tab2" class="tabs-content">
										<div class="tab-description">
											<p class="text"><?php echo $description; ?></p>
										</div>
									</div>
									<div id="tab3" class="tabs-content">
										<div class="tab-coments-wrap">
											<!-- comments -->
											<div class="tab-coments">
											
										
											
 <?php if ($review_status) { ?>
      
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
             
				<h5 class="title coments-form-title"><?php echo $text_write; ?></h5>
               	<div class="tab-coments-form">
			   <?php if ($review_guest) { ?>
               


			   <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
              


			  <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
				
				
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" class="btn btn_act btn_send" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
				  </div>
													  
				  
				  
				  
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
           
            <?php } ?>

												
		
											</div>
											
											
		
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- item aside -->
						<div class="col-lg-3 visible-lg">
							<aside class="aside">
								<div class="item-aside-wrap">
									<!-- delivery -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_delivery"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Доставка</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>бесплатная доставка всех велосипедов по Украине</p>
											</li>
										</ul>
									</div>
									<!-- payment -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_payment"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Оплата</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>полная предоплата</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>наложеный платеж (2% комиссия)</p>
											</li>
										</ul>
									</div>
									<!-- garantee -->
									<div class="item-aside">
										<h6 class="title item-aside-title">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_service"></use>
													</svg>
												</span>
											</span>
											<span class="item-aside-title-text">Гарантия</span>
										</h6>
										<ul class="marked">
											<li class="marked-list marked-list_mini">
												<p>6 месяцев на оборудование официальной гарантии от производителя</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>60 месяцев на раму</p>
											</li>
											<li class="marked-list marked-list_mini">
												<p>обмен/возврат товара в течении 14 дней</p>
											</li>
										</ul>
									</div>
								</div>
								<div class="similar">
									<h4 class="title similar-title">Похожие товары</h4>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-1.jpg" alt="Spark DD 29 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Spark DD 29" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">8320 грн</span>
												<span class="similar-item-price_old">10313 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-2.jpg" alt="Vision Planetary Hub 26 2016">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Vision Planetary Hub 26" 2016</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">6573 грн</span>
												<span class="similar-item-price_old">5990 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-3.jpg" alt="Urban 28 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Urban 28" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">3290 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-4.jpg" alt="Comfort Female Planetary Hub 28 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Comfort Female Planetary Hub 28" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">5175 грн</span>
												<span class="similar-item-price_old">5440 грн</span>
											</div>
										</div>
									</article>
									<article class="similar-item">
										<div class="similar-item-image">
											<a href="#" class="similar-item-image-link">
												<img src="images/similar/item-5.jpg" alt="Smart 20 2017">
											</a>
										</div>
										<div class="similar-item-content">
											<h3 class="similar-item-title">
												<a href="#" class="similar-item-link">Smart 20" 2017</a>
											</h3>
											<div class="similar-item-price-wrap">
												<span class="similar-item-price">3211 грн</span>
											</div>
										</div>
									</article>
								</div>
							</aside>
						</div>
					</div>
				</div>
			</main>
			
				
			</section>
		</div>
	</div>
<!---enditem--->




</section>





      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>












	  
	  
   



<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--


// Tabs Item card
$('.tabs-nav a').on('click', function (e) {
   e.preventDefault();
   var toGo = $(this).attr('href');
   var parent = $(this).closest('tabs-nav a');
   if (!parent.hasClass('is-active')) {
         $('.tabs-nav li a').removeClass('is-active');
         $('.tabs-content').removeClass('is-active');
         $(toGo).addClass('is-active');
         $(this).addClass('is-active');
   } else {
   }
});


$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
    grecaptcha.reset();
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
//--></script>
<?php echo $footer; ?>
