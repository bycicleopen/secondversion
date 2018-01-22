<?php echo $header; ?>


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
									 <?php foreach ($options as $option) { ?>
											<div class="item-info-type">
												<div class="row">
													
													
													
													
													

										
			
			
																<?php if ($option['type'] == 'select') { ?>
																		<!-- size -->
																<div class="col-md-6 col-sm-6">
																	<span class="info-type-label">Размер рамы:</span>
																	<!-- select -->
																		<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
																	<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
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
																				<span class="info-type-label">Цвет:</span>
																															
																
																				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
																				<label class="control-label"><?php echo $option['name']; ?></label>
																				<div id="input-option<?php echo $option['product_option_id']; ?>">
																				<?php foreach ($option['product_option_value'] as $option_value) { ?>
																				<div class="radio">
              
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
				
				  
																				</div>
																				<?php } ?>
																					</div>
																				</div>
				
																				
																				</div>		
			
																				<?php } ?>
													
														
													
													
													
													
												</div>
											</div>
											
											<?php } ?>
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
												<span class="btn-text">Характеристики</span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab2" class="btn btn_default tabs-link">
												<span class="btn-text">Описание</span>
											</a>
										</li>
										<li class="tabs-item">
											<a href="#tab3" class="btn btn_default tabs-link">
												<span class="btn-text">Отзывы</span>
											</a>
										</li>
									</ul>
								</nav>
								<!-- tabs content -->
								<div class="tabs-content-wrap">
									<div id="tab1" class="tabs-content is-active">
										<div class="tab-table-wrap">
											<table class="tab-table">
												<tbody class="tab-table-body">
													<tr>
														<td class="tab-table-property">Рама</td>
														<td>Алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Вилка</td>
														<td>SR Suntour XCR, масляно-пружинная, ход 100мм</td>
													</tr>
													<tr>
														<td class="tab-table-property">Манетки</td>
														<td>Shimano Alivio, SL-M4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Тормоза</td>
														<td>Tektro Draco, гидравлический дисковый, ротор 180/160 мм</td>
													</tr>
													<tr>
														<td class="tab-table-property">Передний переключатель</td>
														<td>Shimano Alivio, FD-T4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Задний переключатель</td>
														<td>Shimano Alivio, RD-T4000</td>
													</tr>
													<tr>
														<td class="tab-table-property">Передняя втулка</td>
														<td>KT, алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Задняя втулка</td>
														<td>KT, алюминий</td>
													</tr>
													<tr>
														<td class="tab-table-property">Система</td>
														<td>Shimano, сталь 22/32/44T</td>
													</tr>
													<tr>
														<td class="tab-table-property">Каретка</td>
														<td>Shimano, картридж</td>
													</tr>
													<tr>
														<td class="tab-table-property">Кассета</td>
														<td>Shimano Altus, CS-HG40</td>
													</tr>
													<tr>
														<td class="tab-table-property">Педали</td>
														<td>алюминий/сталь</td>
													</tr>
													<tr>
														<td class="tab-table-property">Рулевая колонка</td>
														<td>Neco, алюминий/сталь</td>
													</tr>
													<tr>
														<td class="tab-table-property">Седло</td>
														<td>спортивное</td>
													</tr>
													<tr>
														<td class="tab-table-property">Обода</td>
														<td>Weinmann, алюминий, двойные</td>
													</tr>
													<tr>
														<td class="tab-table-property">Покрышки</td>
														<td>Chao Yang, 27.5</td>
													</tr>
													<tr>
														<td class="tab-table-property">Скорости</td>
														<td>21 (3*7)</td>
													</tr>
													<tr>
														<td class="tab-table-property">Вес</td>
														<td>15.5 кг</td>
													</tr>
													<tr>
														<td class="tab-table-property">Диаметр колес</td>
														<td>27.5 дюймов</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="tab2" class="tabs-content">
										<div class="tab-description">
											<p class="text">Горный велосипед для взрослых. Данная модель стала компромиссом среди любителей найнеров и фанатов колёс шириной 26 дюймов. Большие колёса легкие и в то же время прочные.</p>
											<p class="text">Хардтейл для езды в стиле кросс-кантри с оборудованием предпрофессионального класса Shimano, 27 скоростей. Технические особенности: прочная алюминиевая рама, амортизационная вилка SR Suntour XCR, двойные обода Weinmann, дисковые гидравлические тормоза Tektro Draco. Подходит для активной езды по различным дорогам и пересеченной местности. Диаметр колес - 27,5 дюймов. Вес - 15,5 кг.</p>
											<p class="text">Стальная амортизационная вилка помогает комфортно преодолевать неровности на дороге. Большие колёса легкие и в то же время прочные. Дисковые тормоза обеспечивают плавную остановку велосипеда. Он нужен для тех кто любит скорость и накат по-полной. С ним вам не страшны дороги любых сложностей, так как этот велосипед был придуман для дорог в Украине.</p>
										</div>
									</div>
									<div id="tab3" class="tabs-content">
										<div class="tab-coments-wrap">
											<!-- comments -->
											<div class="tab-coments">
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Анатолий</span>
														<div class="coments-item-info">
															<span class="coments-item-date">02 марта 2016</span>
															<div class="coments-item-rating">
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
																		<span class="icon icon_rating icon_rating-fill">
																			<svg>
																				<use xlink:href="#icon_star"></use>
																			</svg>
																		</span>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<p class="text coments-item-text">Горный велосипед для взрослых. Данная модель стала компромиссом среди любителей найнеров и фанатов колёс шириной 26 дюймов. Большие колёса легкие и в то же время прочные.</p>
												</div>
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Дмитрий</span>
														<div class="coments-item-info">
															<span class="coments-item-date">15 сентября 2017</span>
															<div class="coments-item-rating">
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
																		<span class="icon icon_rating">
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
													<p class="text coments-item-text">Благодарен за модель навигатор. Полностью соответствует описанию на сайте. Выполнили заказ должным образом! Все на высшем уровне. Всем друзьям буду рекомендовать этот интернет магазин!</p>
												</div>
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name">Владислав</span>
														<div class="coments-item-info">
															<span class="coments-item-date">23 октября 2017</span>
															<div class="coments-item-rating">
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
													<p class="text coments-item-text">Подскажите пожалуйста, а оплачивать товар когда он пришел или нужна предоплата за велосипед или платить нужно сразу полную стоимость?</p>
												</div>
											</div>
											<!-- form comments -->
											<div class="tab-coments-form">
												<form action="" method="" class="ajax-form">
													<h5 class="title coments-form-title">Написать отзыв</h5>
													<div class="coment-form-row">
														<div class="row min">
															<div class="col-sm-4">
																<input type="text" name="name" class="input input_order" placeholder="Имя" required>
															</div>
															<div class="col-sm-4">
																<input type="email" name="email" class="input input_order" placeholder="Email" required>
															</div>
															<div class="col-sm-4">
																<!-- select -->
																<div class="select-wrap select-rating">
																	<select id="select-rating" name="rating" class="input input_select" required>
																		<option selected>Оценка</option>
																		<option value="1">Плохо</option>
																		<option value="2">Приемлемо</option>
																		<option value="1">Средне</option>
																		<option value="2">Хорошо</option>
																		<option value="2">Отлично</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div class="coment-form-row">
														<div class="row min">
															<div class="col-sm-12">
																<!-- textarea -->
																<textarea id="coment-msg" placeholder="Ваш отзыв" name="comment" class="input input_area input_textarea"></textarea>
															</div>
														</div>
													</div>
													<!-- send button -->
													<div class="coment-form-send">
														<input type="submit" name="order" class="btn btn_act btn_send" value="Отправить">
														<span class="modal-text_small">* - поля, обязательные для заполнения</span>
													</div>

												</form>
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
			
				<div class="section-title">
					<h2 class="title">Просмотренные товары</h2>
					<div class="section-paginator hidden-xs">
						<div class="paginator-list">
							<button class="paginator-item">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_arwleft"></use>
									</svg>
								</span>
							</button>
							<button class="paginator-item">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_arwright"></use>
									</svg>
								</span>
							</button>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="slider-items">
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_bonus">
										<span class="product-label-price">+244
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">бонус до 14.09</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/popular/item-1.jpg" alt="Spark DD 29 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Spark DD 29" 2017</a>
									</h3>
									<span class="product-brand">Formula</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3324 грн</span>
										<span class="product-price_new">4873 грн</span>
									</div>
									<div class="product-buy">
										<a href="#addtocart" class="btn btn_act popup-btn">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_cart"></use>
													</svg>
												</span>
											</span>
											<span class="btn-text">Купить</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#addtocompare" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить к сравнению</span>
									</a>
								</div>
							</article>
						</div>
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_discount">
										<span class="product-label-price">-1749
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">до 14.09.2017</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/discount/item-2.jpg" alt="XC 80 27.5 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">XC 80 27.5” 2017</a>
									</h3>
									<span class="product-brand">Leon</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">9969 грн</span>
										<span class="product-price_new">8220 грн</span>
									</div>
									<div class="product-buy">
										<a href="#" class="btn btn_disabled">
											<span class="btn-text">Нет в наличии</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#addtocompare" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить к сравнению</span>
									</a>
								</div>
							</article>
						</div>
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_discount">
										<span class="product-label-price">-621
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">до 14.09.2017</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/discount/item-3.jpg" alt="Smart 20 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Smart 20” 2017</a>
									</h3>
									<span class="product-brand">Formula</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3111 грн</span>
										<span class="product-price_new">2590 грн</span>
									</div><div class="product-buy">
										<a href="#addtocart" class="btn btn_act popup-btn">
											<span class="btn-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_cart"></use>
													</svg>
												</span>
											</span>
											<span class="btn-text">Купить</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#" class="product-act-link">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">В избранных</span>
									</a>
									<a href="#" class="product-act-link">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">В сравнении</span>
									</a>
								</div>
							</article>
						</div>
						<!-- product-item -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<article class="product-item">
								<div class="product-image">
									<span class="product-label product-label_bonus">
										<span class="product-label-price">+170
											<span class="product-label-price-currancy">грн</span>
										</span>
										<span class="product-label-descr">бонус до 14.09</span>
									</span>
									<span class="product-color">
										<span style="background-color: #06f64c"></span>
										<span style="background-color: #019cf8"></span>
										<span style="background-color: #fc4b19"></span>
									</span>
									<a href="#" class="product-image-link">
										<img src="images/popular/item-4.jpg" alt="Prestige Woman 26 2017">
									</a>
								</div>
								<div class="product-text">
									<h3 class="product-title">
										<a href="#" class="product-title-link">Prestige Woman 26" 2017</a>
									</h3>
									<span class="product-brand">Discovery</span>
								</div>
								<div class="product-info">
									<div class="product-price">
										<span class="product-price_old">3699 грн</span>
										<span class="product-price_new">3405 грн</span>
									</div><div class="product-buy">
										<a href="#" class="btn btn_disabled">
											<span class="btn-text">Нет в наличии</span>
										</a>
									</div>
								</div>
								<div class="product-act">
									<a href="#addtofav" class="product-act-link popup-btn">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_favourite"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">Добавить в избранные</span>
									</a>
									<a href="#" class="product-act-link">
										<span class="btn-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
										<span class="btn-text">В сравнении</span>
									</a>
								</div>
							</article>
						</div>

					</div>
				</div>
			</section>
		</div>
	</div>
<!---enditem--->

<div id="product">

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
															<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
															<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control">
															<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
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



</section>


















	  
	  
   



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
