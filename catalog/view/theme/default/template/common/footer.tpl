	<?php foreach ($informations as $information) { ?>
										<?php if ($information['sort_order']<'700'){?>
										
										<?php if ($information['sort_order']=='1'){ $aboutInf = $information['title']; $aboutInfHref = $information['href']; } ?>
										
										<?php }else {?>	
											<?php if ($information['sort_order']=='710'){ $bycicleInf = $information['title']; $bycicleInfHref = $information['href']; } ?>
										    <?php if ($information['sort_order']=='720'){ $mountainInf = $information['title']; $mountainInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='730'){ $partsInf = $information['title']; $partsInfHref = $information['href']; } ?>
											<?php if ($information['sort_order']=='740'){ $helmetInf = $information['title']; $helmetInfHref = $information['href']; } ?>						
										<?php if ($information['sort_order']=='760'){ $helmetForInf = $information['title']; $helmetForInfHref = $information['href']; } ?>
										<?php if ($information['sort_order']=='770'){ $actionInf = $information['title']; $actiomInfHref = $information['href']; } ?>										
										<?php if ($information['sort_order']=='780'){ $ridingInf = $information['title']; $ridingInfHref = $information['href']; } ?>										
										<?php if ($information['sort_order']=='810'){ $actionsInf = $information['title']; $actionsInfHref = $information['href']; } ?>											
										<?php if ($information['sort_order']=='820'){ $shippingInf = $information['title']; $shippingInfHref = $information['href']; } ?>				
										<?php if ($information['sort_order']=='830'){ $newsInf = $information['title']; $newsInfHref = $information['href']; } ?>	
										<?php if ($information['sort_order']=='840'){ $warrantyInf = $information['title']; $warrantyInfHref = $information['href']; } ?>											
										<?php if ($information['sort_order']=='850'){ $howToInf = $information['title']; $howToInfHref = $information['href']; } ?>	
										<?php if ($information['sort_order']=='860'){ $reclamationInf = $information['title']; $reclamationInfHref = $information['href']; } ?>	
										<?php if ($information['sort_order']=='870'){ $questionsInf = $information['title']; $questionsInfHref = $information['href']; } ?>											
										<?php if ($information['sort_order']=='900'){ $schemaInf = $information['title']; $schemaInfHref = $information['href']; } ?>											
										<?php } ?>	
										
									<?php } ?>	
	<!-- Footer -->
	<footer class="footer">

			<!-- footer top -->
			<div class="footer-top">
				<div class="container">
					<div class="row">

						<div class="col-md-8">
							<div class="row">
								<div class="col-md-5">

									<div class="row">
										<div class="col-md-12 col-sm-6">
											<div class="phone-wrap phone-wrap_footer">
												<a href="tel:+380685001002" class="phone-call phone-call_footer">+38(068) 500-10-02</a>
												<span class="icon icon_footer">
													<svg>
														<use xlink:href="#icon_sellphone"></use>
													</svg>
												</span>
												<time class="phone-time phone-time_footer">с 9:00 до 18:00 без выходных</time>
											</div>

											<a href="#callback" class="btn btn_act btn_cta-footer popup-btn">Заказать обратный звонок</a>

										</div>

										<div class="col-md-12 col-sm-6">
											<div class="footer-adress-wrap">
												<address class="footer-adress">Хмельницкий ул.Курчатова, 58</address>
												<span class="icon icon_adress">
													<svg>
														<use xlink:href="#icon_marker"></use>
													</svg>
												</span>											
												<a href="<?php echo $schemaInfHref ?>" id="howtoget" class="link footer-adress-link"><?php echo $schemaInf ?></a>
											</div>
										</div>

									</div>
								</div>

								<div class="col-md-7">
									<div class="row">
										<div class="col-md-5 col-sm-6">
											<span class="footer-title">Компания</span>
											<menu class="footer-menu_items">
												<li class="footer-menu_item"><a href="<?php echo $actionsInfHref ?>" class="footer-menu_link"><?php echo $actionsInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $aboutInfHref ?>" class="footer-menu_link"><?php echo $aboutInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $shippingInfHref ?>" class="footer-menu_link"><?php echo $shippingInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $newsInfHref ?>" class="footer-menu_link"><?php echo $newsInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $contact; ?>" class="footer-menu_link"><?php echo $text_contact; ?></a></li>
									
											</menu>
										</div>
										
										<div class="col-md-7 col-sm-6">
											<span class="footer-title">Информация</span>
											<menu class="footer-menu_items">
												<li class="footer-menu_item"><a href="<?php echo $warrantyInfHref ?>" class="footer-menu_link"><?php echo $warrantyInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $howToInfHref ?>" class="footer-menu_link"><?php echo $howToInf ?></a></li>
												<li class="footer-menu_item"><a href="<?php echo $questionsInfHref ?>" class="footer-menu_link"><?php echo $questionsInf ?>ы</a></li>
												<li class="footer-menu_item"><a href="<?php echo $return; ?>" class="footer-menu_link"><?php echo $text_return; ?></a></li>
											</menu>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="col-md-4">
							<div class="row">
								<div class="col-md-12 col-sm-6">
									<div class="footer-newsseller">
										<form id="signup" action="" method="" class="form-news">
											<span class="footer-title">Подписаться на розсылку</span>
											<input id="email" type="email" name="email" class="input input_email" placeholder="Введите email">
											<button type="submit" class="btn btn_news">
												<span class="btn-icon">
													<span class="icon">
														<svg>
															<use xlink:href="#icon_send"></use>
														</svg>
													</span>
												</span>
												<span class="btn-text">Подписаться</span>
											</button>
										</form>
									</div>
								</div>

								<div class="col-md-12 col-sm-6">
									<div class="footer-social">
										<span class="footer-title ">Мы в соц сетях</span>
										<ul class="footer-social_items">
											<li class="footer-social_item">
												<a href="#" class="footer-social_link social_vk">
													<span class="icon">
														<svg>
															<use xlink:href="#icon_vk"></use>
														</svg>
													</span>
												</a>
											</li>
											<li class="footer-social_item">
												<a href="#" class="footer-social_link social_fb">
													<span class="icon">
														<svg>
															<use xlink:href="#icon_fb"></use>
														</svg>
													</span>
												</a>
											</li>
											<li class="footer-social_item">
												<a href="#" class="footer-social_link social_tw">
													<span class="icon">
														<svg>
															<use xlink:href="#icon_tw"></use>
														</svg>
													</span>
												</a>
											</li>
											<li class="footer-social_item">
												<a href="#" class="footer-social_link social_ggl">
													<span class="icon">
														<svg>
															<use xlink:href="#icon_ggl"></use>
														</svg>
													</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- footer bottom -->
			<div class="footer-bottom">
				<div class="container">
					<div class="row">

						<div class="col-md-8 col-sm-7">
							<div class="footer-copyright">&copy; Интернет-магазин «Велосклад» 2016–2017 Велосипеды с доставкой по Украине</div>
						</div>

						<div class="col-md-4 col-sm-5">
							<div class="footer-payment">
								<span class="footer-payment-text">Мы принимаем:</span>
								<ul class="footer-payment_items">
									<li class="footer-payment_item">
										<span class="icon icon_payment_footer">1
											<svg>
												<use xlink:href="#icon_visa"></use>
											</svg>
										</span>
									</li>
									<li class="footer-payment_item">
										<span class="icon icon_payment_footer">2
											<svg>
												<use xlink:href="#icon_mc"></use>
											</svg>
										</span>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
	</footer>
	



	<!-- SVG Icons -->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
		<!-- Filter Arrow -->
		<symbol id="icon_filterarr" viewBox="0 0 11 6.9">
		  <path d="M11 1.4L6.9 5.5 5.5 6.9 4.1 5.5 0 1.4 1.4 0l4.1 4.1L9.6 0 11 1.4z"/>
		</symbol>
		<!-- Crumb Arrow -->
		<symbol id="icon_crumbarr" viewBox="0 0 4 6.2">
		  <path d="M4 3.2l-3.3 3-.7-.8 2.5-2.2L.1.7.8 0 4 3.2z"/>
		</symbol>
		<!-- Arrow Left -->
		<symbol id="icon_arwleft" viewBox="0 0 9 17.03">
			<path d="M9.88 1.4L2.96 8.33l6.78 7.34-1.47 1.36L1.4 9.9 0 8.46l1.6-1.62L8.47 0z"></path>
		</symbol>
		<!-- Arrow Right -->
		<symbol id="icon_arwright" viewBox="0 0 8 17.03">
			<path d="M9.88 8.47L8.48 9.9 1.6 17.02.13 15.67 6.9 8.33 0 1.4 1.4 0l6.86 6.85z"></path>
		</symbol>
		<!-- Minus -->
		<symbol id="icon_minus" viewBox="0 0 15 3">
			<path d="M0 0h15v3H0z"></path>
		</symbol>
		<!-- Plus -->
		<symbol id="icon_plus" viewBox="0 0 15 15">
			<path d="M15 9H9v6H6V9H0V6h6V0h3v6h6v3z"></path>
		</symbol>
		<!-- Back to News -->
		<symbol id="icon_back" viewBox="0 0 13 6">
			<path d="M12.9,2.1c0,0-0.1-0.1-0.2-0.1H4V0.3C3.8,0.1,3.6,0.1,3.4,0c-0.1,0-0.2,0-0.3,0l-3,2.8C0,2.9,0,3,0,3 c0,0.1,0,0.1,0.1,0.2l3,2.7C3.2,6,3.3,6,3.4,6c0.2,0,0.5-0.1,0.6-0.2V4h8.8C12.9,4,13,3.9,13,3.8c0,0,0,0,0,0V2.3 C13,2.2,13,2.1,12.9,2.1z"></path>
		</symbol>
		<!-- Cart -->
		<symbol id="icon_cart" viewBox="0 0 16 15">
			<path d="M11.7,12.3c-0.6,0.6-0.6,1.7,0,2.3c0.6,0.6,1.6,0.6,2.2,0c0.3-0.3,0.5-0.7,0.4-1.1c0-0.4-0.2-0.8-0.4-1.1 c-0.3-0.3-0.7-0.5-1.1-0.5C12.4,11.8,12,12,11.7,12.3z M0,1h1.6l2.9,5.7l-1.1,2C3.1,9.3,3.2,10,3.7,10.5C4,10.8,4.4,11,4.8,11h9.6 v-1H4.7c-0.1,0-0.2,0-0.2-0.1c0,0,0,0,0,0l0-0.1l0.5-1.4h6.6c0.3,0,0.6-0.1,0.8-0.2c0.2-0.3,0.4-0.6,0.6-0.9l2.8-5.4 c0.1-0.1,0.3-0.1-0.1-0.5C15.6,1.1,15.4,1,15.2,1H3.2L2.4,0H0L0,1L0,1z M3.7,12.3c-0.6,0.6-0.6,1.6,0,2.3C4,14.9,4.4,15,4.8,15 c0.4,0,0.8-0.2,1.1-0.5c0.3-0.3,0.5-0.7,0.5-1.1c0-0.9-0.7-1.6-1.6-1.6c0,0,0,0,0,0C4.4,11.8,4,12,3.7,12.3L3.7,12.3z M6,7L3.7,2.3	h10.4L11.9,7H6z"></path>
		</symbol>
		<!-- Compare -->
		<symbol id="icon_compare" viewBox="0 0 20 15">
			<path d="M20,7.7L20,7.7C20,7.7,20,7.6,20,7.7c0-0.1,0-0.2,0-0.2l0,0l-2.7-6.4h1.3c0.3,0,0.5-0.2,0.5-0.5 C19,0.3,18.8,0,18.5,0c0,0,0,0,0,0h-17C1.2,0,1,0.3,1,0.5c0,0.3,0.2,0.5,0.5,0.5c0,0,0,0,0,0h1.3L0,7.5l0,0c0,0.1,0,0.1,0,0.2 c0,0,0,0,0,0s0,0,0,0l0,0c0.1,2,1.7,3.5,3.7,3.5c1.9-0.1,3.4-1.6,3.5-3.5l0,0l0,0c0,0,0,0,0-0.1c0-0.1,0-0.1,0-0.2l0,0l0,0L4.4,1.1 h5v12.8H6.1c-0.3,0-0.5,0.2-0.5,0.5c0,0.3,0.2,0.5,0.5,0.5c0,0,0,0,0,0h7.9c0.3,0,0.5-0.2,0.5-0.5c0-0.3-0.2-0.5-0.5-0.5 c0,0,0,0,0,0h-3.4V1.1h5l-2.7,6.4l0,0l0,0c0,0.1,0,0.1,0,0.2c0,0,0,0,0,0s0,0,0,0l0,0c0,2,1.7,3.5,3.7,3.5C18.4,11.2,20,9.6,20,7.7 L20,7.7L20,7.7z M3.6,2l2.2,5.2H1.4L3.6,2z M3.6,10.1c-1.1,0-2.1-0.8-2.4-1.9H6C5.7,9.3,4.7,10.1,3.6,10.1L3.6,10.1z M16.4,1.9 l2.2,5.2h-4.4L16.4,1.9z M16.4,10.1c-1.1,0-2.1-0.8-2.4-1.9h4.8C18.6,9.3,17.6,10.1,16.4,10.1L16.4,10.1z"></path>
		</symbol>
		<!-- Cross -->
		<symbol id="icon_cross" viewBox="0 0 11 11">
			<path d="M6.6,5.5L11,9.9L9.9,11L5.5,6.6L1.1,11L0,9.9l4.4-4.4L0,1.1L1.1,0l4.4,4.4L9.9,0L11,1.1L6.6,5.5z"></path>
		</symbol>
		<!-- Date -->
		<symbol id="icon_date" viewBox="0 0 14 14">
			<path d="M1,5h12v8H1V5z M4.4,3.7c0,0-0.1,0.1-0.2,0.1H3.8c-0.1,0-0.2-0.1-0.3-0.2c0,0,0,0,0,0V1.3 C3.5,1.1,3.6,1,3.7,1c0,0,0,0,0,0h0.5c0.1,0,0.2,0.1,0.3,0.2c0,0,0,0,0,0v2.3C4.5,3.6,4.5,3.6,4.4,3.7z M10.4,3.7 c0,0-0.1,0.1-0.2,0.1H9.8c-0.1,0-0.2-0.1-0.3-0.2c0,0,0,0,0,0V1.3C9.5,1.1,9.6,1,9.7,1c0,0,0,0,0,0h0.5c0.1,0,0.2,0.1,0.3,0.2 c0,0,0,0,0,0v2.3C10.5,3.6,10.5,3.6,10.4,3.7z M13.7,2.3C13.3,2.1,12.9,2,12.5,2h-1V1.3c0-0.7-0.6-1.2-1.3-1.3H9.8 C9.1,0,8.5,0.6,8.5,1.3V2h-3V1.3C5.5,0.6,4.9,0,4.3,0H3.8C3.1,0,2.5,0.6,2.5,1.3V2h-1C1.1,2,0.7,2.1,0.3,2.3C0.1,2.5,0,2.7,0,3v10 c0,0.3,0.1,0.5,0.3,0.7C0.7,13.9,1.1,14,1.5,14h11c0.4,0,0.8-0.1,1.2-0.3c0.2-0.2,0.3-0.4,0.3-0.7V3C14,2.7,13.9,2.5,13.7,2.3z"></path>
		</symbol>
		<!-- Delivery -->
		<symbol id="icon_delivery" viewBox="0 0 23.2 18.9">
			<path d="M6,17.2c-1,0-1.7-0.8-1.8-1.7c0-1,0.8-1.7,1.7-1.8c1,0,1.7,0.8,1.8,1.7c0,0.5-0.2,0.9-0.5,1.3 C6.9,17,6.5,17.2,6,17.2z M2.6,8.2c0-0.1,0-0.2,0.1-0.3l2.6-2.6c0.1-0.1,0.2-0.1,0.3-0.1h2.1v3.4H2.6L2.6,8.2L2.6,8.2z M18,17.2 c-1,0-1.7-0.8-1.8-1.7c0-1,0.8-1.7,1.7-1.8c1,0,1.7,0.8,1.8,1.7c0,0.5-0.2,0.9-0.5,1.3C18.9,17,18.5,17.2,18,17.2z M22.9,0.3 C22.7,0.1,22.5,0,22.3,0H8.6C8.1,0,7.7,0.4,7.7,0.9v2.6H5.6C5,3.5,4.5,3.7,4.1,4L1.5,6.7C1.4,6.8,1.3,6.9,1.2,7.1 C1.1,7.2,1,7.4,1,7.5c0,0.2-0.1,0.3-0.1,0.5c0,0.2,0,0.4,0,0.5c0,0.1,0,0.3,0,0.5s0,0.4,0,0.5v4.3c-0.5,0-0.9,0.4-0.9,0.9 c0,0.1,0,0.2,0.1,0.4c0,0.1,0.1,0.2,0.2,0.2c0.1,0.1,0.2,0.1,0.2,0.2c0.1,0,0.2,0.1,0.3,0.1l0.3,0c0.1,0,0.2,0,0.3,0l0.3,0h0.9 c0,1.9,1.6,3.4,3.5,3.4c1.8,0,3.3-1.5,3.4-3.4h5.1c0,1.9,1.6,3.4,3.5,3.4c1.8,0,3.3-1.5,3.4-3.4l0.3,0c0.2,0,0.3,0,0.3,0l0.3,0 c0.1,0,0.2,0,0.3-0.1c0.1,0,0.1-0.1,0.2-0.2c0.1-0.1,0.1-0.1,0.2-0.2c0-0.1,0.1-0.2,0.1-0.4V0.9C23.2,0.6,23.1,0.4,22.9,0.3 L22.9,0.3z"></path>
		</symbol>
		<!-- Done -->
		<symbol id="icon_done" viewBox="0 0 55.7 60.4">
			<path d="M7,51.1c-1.3,0-2.4-1-2.4-2.3c0-1.3,1-2.4,2.3-2.4c1.3,0,2.4,1,2.4,2.3c0,0.6-0.2,1.2-0.7,1.7 C8.2,50.8,7.6,51.1,7,51.1z M50.3,30.8c-0.5,1.1-1.2,1.7-1.9,1.7c0.4,0.5,0.7,1.1,0.9,1.7c0.2,0.6,0.3,1.3,0.4,2 c0,1.6-0.7,3.2-1.9,4.3c0.4,0.8,0.7,1.6,0.7,2.5c0,0.9-0.2,1.8-0.6,2.7c-0.4,0.8-1,1.5-1.7,1.9c0.1,0.7,0.2,1.4,0.2,2 c0,4-2.3,6.1-7,6.1h-4.4c-3.2,0-7.3-0.9-12.4-2.6c-0.1,0-0.5-0.2-1.1-0.4l-1.3-0.5c-0.3-0.1-0.7-0.2-1.3-0.4c-0.6-0.2-1-0.3-1.4-0.4 s-0.8-0.2-1.2-0.2c-0.4-0.1-0.8-0.1-1.1-0.1h-1.2V27.9h1.2c0.4,0,0.9-0.1,1.3-0.3c0.5-0.3,1-0.6,1.5-1c0.5-0.4,1-0.9,1.4-1.3 c0.5-0.5,1-1,1.5-1.6c0.5-0.6,1-1.2,1.3-1.5s0.7-0.9,1.1-1.5c0.5-0.6,0.7-1,0.8-1.1c1.3-1.6,2.3-2.7,2.8-3.3c1-1.1,1.8-2.5,2.2-4 c0.4-1.6,0.8-3.1,1.1-4.6c0.2-1.1,0.6-2.2,1.4-3.1c2.3,0,3.9,0.6,4.6,1.7c0.9,1.6,1.3,3.4,1.2,5.3c-0.2,2-0.8,4-1.7,5.8 c-1,1.8-1.6,3.8-1.7,5.8h12.8c1.2,0,2.4,0.5,3.2,1.4c0.9,0.8,1.4,2,1.4,3.2C51,28.9,50.8,29.9,50.3,30.8z M53,21.3 c-1.7-1.8-4.1-2.8-6.5-2.8H40c1.1-2.2,1.7-4.5,1.7-7c0.1-2.3-0.3-4.6-1.3-6.7c-0.8-1.6-2.1-2.9-3.7-3.7C35.1,0.4,33.2,0,31.3,0 c-1.2,0-2.4,0.5-3.3,1.3c-1.1,1.1-1.9,2.4-2.2,3.9c-0.5,1.6-0.8,3.1-1.1,4.6c-0.1,1.1-0.6,2.2-1.3,3.1c-1.2,1.3-2.5,2.8-3.9,4.6 c-2.4,3.2-4.1,5-5,5.6H4.6c-2.6,0-4.6,2.1-4.6,4.6c0,0,0,0,0,0v23.2c0,2.6,2.1,4.6,4.6,4.6h10.4c1.7,0.3,3.4,0.8,5,1.5 c3,1,5.6,1.8,7.9,2.4c2.3,0.5,4.6,0.8,6.9,0.8h4.7c3,0.1,6-0.9,8.2-2.9c2.1-2.1,3.3-5,3.1-8c1.4-1.8,2.2-4.1,2.2-6.5 c0-0.5,0-1-0.1-1.6c0.9-1.6,1.4-3.4,1.4-5.2c0-0.8-0.1-1.7-0.3-2.5c1.2-1.7,1.8-3.8,1.8-5.9C55.7,25.4,54.7,23,53,21.3L53,21.3z"></path>
		</symbol>
		<!-- Email -->
		<symbol id="icon_email" viewBox="0 0 16 12.3">
			<path d="M14.8,11.1c-0.1,0.1-0.1,0.1-0.2,0.1H1.4c-0.2,0-0.3-0.1-0.3-0.3V4.1c0.2,0.2,0.4,0.4,0.6,0.6 c1.6,1.2,2.9,2.2,3.8,3c0.3,0.3,0.6,0.5,0.7,0.6c0.2,0.2,0.5,0.3,0.8,0.4C7.4,8.9,7.7,8.9,8,8.9h0c0.3,0,0.6-0.1,0.9-0.2 c0.3-0.1,0.5-0.3,0.8-0.4c0.2-0.1,0.4-0.3,0.7-0.6c0.9-0.8,2.2-1.8,3.8-3c0.2-0.2,0.4-0.4,0.6-0.6v6.9C14.9,11,14.8,11.1,14.8,11.1z M14.4,2.7c-0.2,0.4-0.5,0.7-0.9,1c-1.1,0.9-2.3,1.8-3.6,2.8L9.6,6.8C9.5,7,9.3,7.1,9.2,7.2C9.1,7.3,9,7.4,8.8,7.5 C8.7,7.6,8.5,7.6,8.4,7.7C8.3,7.8,8.1,7.8,8,7.8h0c-0.1,0-0.3,0-0.4-0.1C7.4,7.6,7.3,7.6,7.2,7.5C7,7.4,6.8,7.3,6.8,7.2 S6.5,7,6.3,6.8L6,6.6c-1.2-1-2.4-1.9-3.6-2.8C1.6,3.3,1.1,2.4,1.1,1.5c0-0.2,0.1-0.3,0.3-0.3c0,0,0,0,0,0h13.1c0,0,0.1,0,0.1,0 c0,0,0.1,0,0.1,0.1l0,0.1c0,0,0,0.1,0,0.1c0,0,0,0.1,0,0.1v0.2C14.8,2.2,14.7,2.5,14.4,2.7L14.4,2.7z M15.6,0.4 C15.3,0.2,15,0,14.6,0H1.4C0.6,0,0,0.6,0,1.4v9.5c0,0.4,0.1,0.7,0.4,1c0.3,0.3,0.6,0.4,1,0.4h13.1c0.4,0,0.7-0.1,1-0.4 c0.3-0.3,0.4-0.6,0.4-1V1.4C16,1.1,15.9,0.7,15.6,0.4z"></path>
		</symbol>
		<!-- Favourite -->
		<symbol id="icon_favourite" viewBox="0 0 18 15.4">
			<path d="M14.8,8.3L9,13.9L3.2,8.3C2.1,7.4,1.4,6.1,1.3,4.7c0-0.5,0.1-1,0.2-1.4c0.1-0.4,0.3-0.7,0.6-1 C2.3,2,2.6,1.8,2.9,1.7c0.3-0.1,0.6-0.3,0.9-0.3c0.3-0.1,0.7-0.1,1-0.1c0.4,0,0.8,0.1,1.1,0.3C6.3,1.7,6.7,1.9,7,2.2 c0.3,0.3,0.6,0.5,0.9,0.7c0.2,0.2,0.4,0.4,0.6,0.6c0.2,0.3,0.7,0.3,0.9,0.1c0,0,0,0,0.1-0.1c0.2-0.2,0.4-0.4,0.6-0.6 c0.2-0.2,0.5-0.5,0.9-0.7c0.3-0.3,0.7-0.5,1.1-0.6c0.4-0.2,0.7-0.2,1.1-0.3c0.3,0,0.7,0,1,0.1c0.3,0.1,0.6,0.2,0.9,0.3 c0.3,0.1,0.6,0.3,0.8,0.6c0.2,0.3,0.4,0.6,0.6,1c0.2,0.5,0.2,0.9,0.2,1.4C16.6,6.1,15.9,7.4,14.8,8.3L14.8,8.3L14.8,8.3z M16.7,1.3 c-1-0.9-2.2-1.3-3.5-1.2c-0.4,0-0.9,0.1-1.3,0.2c-0.4,0.1-0.8,0.3-1.2,0.6c-0.4,0.2-0.7,0.5-1,0.7C9.5,1.7,9.2,1.9,9,2.2 C8.8,1.9,8.5,1.7,8.2,1.5C8,1.3,7.7,1.1,7.3,0.8C6.9,0.6,6.5,0.4,6.1,0.2C5.7,0.1,5.2,0,4.8,0C3.5-0.1,2.2,0.4,1.3,1.3 C0.4,2.2-0.1,3.4,0,4.7c0,0.5,0.1,0.9,0.2,1.4c0.1,0.4,0.3,0.8,0.5,1.2C1,7.7,1.2,8,1.5,8.3C1.7,8.6,1.9,8.8,2,9 C2.1,9,2.2,9.1,2.3,9.2l6.3,6c0.2,0.2,0.6,0.2,0.9,0l6.3-6C17,8.1,17.9,6.5,18,4.7C18.1,3.4,17.6,2.2,16.7,1.3L16.7,1.3z"></path>
		</symbol>
		<!-- Facebook -->
		<symbol id="icon_fb" viewBox="0 0 7.5 15">
			<path d="M5.3,0C4.5,0,3.7,0.3,3.1,0.9C2.6,1.4,2.2,2.2,2.2,3v3H0v3h2.3v6h3V9h2.3V6H5.3V4.1c0-0.3,0.1-0.5,0.2-0.8 C5.5,3.2,5.8,3,6,3h1.5V0H5.3L5.3,0z"></path>
		</symbol>
		<!-- Google Plus -->
		<symbol id="icon_ggl" viewBox="0 0 18.4 11.6">
			<path d="M18.4,6.6h-1.7v1.7H15V6.6h-1.6V5H15V3.3h1.7V5h1.7V6.6L18.4,6.6z M11.3,5c0.1,0.2,0.1,0.3,0.1,0.5l0,0.5 c0,1.5-0.5,3-1.5,4.1c-1.1,1.1-2.5,1.6-4,1.6c-1.6,0-3-0.6-4.1-1.7c-2.3-2.3-2.3-6,0-8.3c0,0,0,0,0,0C2.8,0.6,4.3,0,5.9,0 c1.5,0,2.9,0.5,3.9,1.6L8.2,3.1C7.9,2.8,7.6,2.6,7.3,2.5C6.8,2.3,6.4,2.1,5.9,2.1c-1,0-1.9,0.4-2.6,1.1C2,4.7,2,6.9,3.3,8.4 C4,9.1,4.9,9.5,5.9,9.5c0.9,0,1.8-0.3,2.5-0.9C8.8,8.1,9,7.6,9.2,7H5.9V5L11.3,5L11.3,5z"></path>
		</symbol>
		<!-- Gift -->
		<symbol id="icon_gift" viewBox="0 0 14 12">
			<path d="M8.3,10.9C8.2,11,8.1,11,7.9,11H6.1c-0.1,0-0.3,0-0.4-0.1c-0.1-0.1-0.2-0.2-0.2-0.3V4h3v6.5 C8.5,10.7,8.5,10.8,8.3,10.9z M3.6,2.6c-0.3-0.3-0.3-0.9,0-1.2C3.8,1.2,4,1.1,4.2,1.1c0.2,0,0.5,0.1,0.6,0.3L6,2.9H4.2 C4,2.9,3.8,2.8,3.6,2.6L3.6,2.6z M9.5,2.9H7.8l1.1-1.4C9,1.2,9.3,1.1,9.5,1.1c0.5,0,0.9,0.4,0.9,0.9C10.4,2.5,10,2.9,9.5,2.9 L9.5,2.9L9.5,2.9z M13.9,4.1C13.8,4,13.8,4,13.7,4H9c0.7,0,1.4-0.2,1.9-0.6c0.8-0.8,0.8-2,0-2.8C10.5,0.2,10,0,9.5,0 C8.9,0,8.4,0.2,8,0.7L6.9,2.2L5.7,0.7C5.4,0.2,4.8,0,4.2,0c-1.1,0-2,0.9-2,2s0.9,2,2,2H0.3C0.1,4,0,4.1,0,4.3c0,0,0,0,0,0v2.9 c0,0.2,0.1,0.3,0.3,0.3c0,0,0,0,0,0h0.9v3.7C1.1,11.6,1.5,12,2,12c0,0,0,0,0,0h10.1c0.5,0,0.9-0.4,0.9-0.9c0,0,0,0,0,0V7.4h0.7 c0.2,0,0.3-0.1,0.3-0.3c0,0,0,0,0,0V4.3C14,4.2,13.9,4.1,13.9,4.1L13.9,4.1z"></path>
		</symbol>
		<!-- Grid -->
		<symbol id="icon_grid" viewBox="0 0 20 13">
			<path d="M7,0h6v6H7V0z M14,0h6v6h-6V0z M7,7h6v6H7V7z M14,7h6v6h-6V7z M0,0h6v6H0V0z M0,7h6v6H0V7z"></path>
		</symbol>
		<!-- Home -->
		<symbol id="icon_home" viewBox="0 0 14.4 11.5">
			<path d="M12.3,6.6L7.2,2.3L2.1,6.6c0,0,0,0,0,0c0,0,0,0,0,0v4.3c0,0.3,0.3,0.6,0.6,0.6h3.4V8h2.3v3.4h3.4 c0.3,0,0.6-0.3,0.6-0.6L12.3,6.6C12.4,6.6,12.3,6.6,12.3,6.6L12.3,6.6L12.3,6.6z M14.4,5.8c0-0.1,0-0.1-0.1-0.2l-2-1.6V0.3 c0-0.2-0.1-0.3-0.3-0.3c0,0,0,0,0,0h-1.7c-0.2,0-0.3,0.1-0.3,0.3c0,0,0,0,0,0v1.7L7.9,0.2c-0.4-0.3-1-0.3-1.4,0L0.1,5.6 C0.1,5.6,0,5.7,0,5.8C0,5.9,0,5.9,0.1,6l0.6,0.7c0,0.1,0.1,0.1,0.2,0.1c0.1,0,0.2,0,0.2-0.1l6.2-5.2l6.2,5.2c0.1,0,0.1,0.1,0.2,0.1 h0c0.1,0,0.1,0,0.2-0.1L14.3,6C14.4,5.9,14.4,5.9,14.4,5.8L14.4,5.8z"></path>
		</symbol>
		<!-- List -->
		<symbol id="icon_list" viewBox="0 0 20 13">
			<path d="M5,3V0h15v3H5z M5,8V5h15v3H5z M5,13v-3h15v3H5z M0,0h3v3H0V0z M0,5h3v3H0V5z M0,10h3v3H0V10z"></path>
		</symbol>
		<!-- Marker -->
		<symbol id="icon_marker" viewBox="0 0 9.2 13.7">
			<path d="M4.6,6.8c-1.3,0-2.3-1-2.3-2.3c0-1.3,1-2.3,2.3-2.3c1.3,0,2.3,1,2.3,2.3c0,0.6-0.2,1.2-0.7,1.6 C5.8,6.6,5.2,6.9,4.6,6.8z M7.8,1.3C6-0.5,3.1-0.5,1.3,1.3C0.5,2.2,0,3.4,0,4.6c0,0.5,0.1,1.1,0.3,1.6l3.3,6.9 c0.1,0.2,0.2,0.4,0.4,0.5c0.4,0.2,0.8,0.2,1.2,0c0.2-0.1,0.3-0.3,0.4-0.5l3.3-6.9c0.2-0.5,0.3-1.1,0.3-1.6C9.2,3.3,8.7,2.2,7.8,1.3 L7.8,1.3z"></path>
		</symbol>
		<!-- Mastercard -->
		<symbol id="icon_mc" viewBox="0 0 41 25">
			<path d="M9.2,14C9.2,14,9.2,14,9.2,14c0,0.3,0.2,0.5,0.5,0.5v0c0.5-0.1,0.9-0.6,0.9-1.2c-0.1,0-0.2,0-0.3,0 C9.4,13.3,9.2,13.6,9.2,14z"></path>
			<path d="M20.1,12.3c0-0.4-0.2-0.7-0.6-0.7l0,0c-0.4,0-0.8,0.4-0.8,0.8H20C20.1,12.4,20.1,12.4,20.1,12.3z"></path>
			<path d="M36,11.8c-0.5,0-1,0.6-1,1.5c0,0.6,0.2,0.9,0.6,0.9c0.7-0.2,1.1-0.8,1-1.5l0,0C36.6,12.1,36.4,11.8,36,11.8z"></path>
			<path d="M28.7,0c-3.1,0-6,1.2-8.2,3.2C18.2,1.2,15.3,0,12.3,0h-0.1C5.5,0.2,0.1,5.6,0,12.3C-0.1,19.2,5.4,24.9,12.3,25 c3.1,0,6-1.2,8.2-3.2c2.2,2.1,5.2,3.2,8.2,3.2c6.8-0.1,12.3-5.7,12.3-12.5c0,0,0,0,0,0c0,0,0,0,0,0C41,5.7,35.6,0.1,28.7,0z M6.3,15.4L7,11.1l-1.6,4.3H4.6l-0.1-4.3l-0.7,4.3H2.6l1-5.7h1.8l0.1,3.5l1.2-3.5h1.9l-1,5.7H6.3z M10.4,15.3l0-0.5 c-0.3,0.4-0.8,0.6-1.2,0.5c-0.1,0-0.1,0-0.2,0c-0.6-0.1-1.1-0.7-1-1.3c0-1.3,1.1-1.8,2.1-1.8c0.2,0,0.5,0,0.5,0c0-0.1,0-0.2,0-0.3 c0-0.4-0.3-0.4-0.8-0.4c-0.4,0-0.9,0.1-1.3,0.2l0.2-1c0.5-0.2,1-0.3,1.5-0.3c0.1,0,0.2,0,0.3,0c0.8,0,1.4,0.7,1.4,1.5l-0.5,3.3 H10.4z M13.5,12.1c0,0.6,1.4,0.3,1.4,1.8c0,0.9-0.7,1.6-1.6,1.5c-0.1,0-0.2,0-0.3,0c-0.5,0-0.9,0-1.4-0.1l0.2-1 c0.3,0.1,0.7,0.2,1.1,0.2c0.3,0,0.8,0,0.8-0.4c0-0.6-1.5-0.4-1.5-1.8c0-0.9,0.7-1.6,1.5-1.6c0.1,0,0.2,0,0.3,0c0.4,0,0.8,0,1.1,0.1 L15,11.8c0,0-0.7-0.1-0.8-0.1C13.7,11.7,13.5,11.8,13.5,12.1L13.5,12.1z M16.8,14.3c0.1,0,0.2,0,0.3,0l-0.2,1 c-0.3,0.1-0.6,0.1-0.9,0.2c-0.5,0-0.9-0.3-1-0.8c0-0.1,0-0.1,0-0.2c0-0.5,0.7-4.4,0.7-4.4H17l-0.1,0.7h0.6l-0.2,1.1h-0.6l-0.3,2.1 C16.3,14.1,16.4,14.3,16.8,14.3z M19.7,14.4c0.4,0,0.9-0.1,1.3-0.3l-0.2,1.2c-0.4,0.2-0.8,0.2-1.3,0.2c-0.1,0-0.3,0-0.4,0 c-1-0.1-1.8-1.1-1.7-2.1c0-1.5,0.9-2.8,2.1-2.8c0.1,0,0.2,0,0.3,0c0.9,0.1,1.5,0.9,1.5,1.7c0,0.4-0.1,0.7-0.2,1.1l0,0h-2.5 C18.6,13.4,18.4,14.4,19.7,14.4z M22.4,15.4h-1.2l0.8-4.6h1.1l-0.1,0.7c0.2-0.4,0.5-0.6,0.9-0.7c0.1,0,0.2,0,0.2,0l0,0 c-0.2,0.4-0.4,0.9-0.5,1.4C22.8,11.8,22.8,13.4,22.4,15.4z M27.2,15.3c-0.3,0.1-0.7,0.1-1.1,0.2c-1.4,0-2.2-1-2.2-2.5 c0-2.2,1.4-3.4,2.8-3.4c0.5,0,0.9,0.1,1.4,0.3l-0.2,1.3c-0.3-0.2-0.7-0.3-1.1-0.3c-0.8,0-1.6,0.8-1.6,2.2c-0.1,0.7,0.4,1.3,1,1.3 c0.1,0,0.1,0,0.2,0l0,0c0.3,0,0.7-0.1,1-0.3L27.2,15.3z M30.1,15.3l0-0.5c-0.3,0.4-0.8,0.6-1.2,0.5c-0.1,0-0.1,0-0.2,0 c-0.6-0.1-1.1-0.7-1-1.3c0-1.3,1.1-1.8,2.1-1.8c0.2,0,0.5,0,0.5,0c0-0.1,0-0.2,0-0.3c0-0.4-0.3-0.4-0.8-0.4c-0.4,0-0.9,0.1-1.3,0.2 l0.2-1c0.5-0.2,1-0.3,1.5-0.3l0,0c0.1,0,0.2,0,0.3,0c0.8,0,1.4,0.7,1.4,1.5l-0.5,3.3H30.1z M32.6,15.4h-1.2l0.8-4.6h1.1l-0.1,0.7 c0.2-0.4,0.5-0.6,0.9-0.7c0.1,0,0.2,0,0.2,0c-0.2,0.4-0.4,0.9-0.5,1.4l0,0C33,11.8,33,13.4,32.6,15.4z M37.5,15.3h-1.2l0.1-0.4 c-0.3,0.3-0.7,0.5-1.1,0.5c0,0,0,0-0.1,0c-0.9-0.1-1.6-1-1.4-1.9l0,0c0-1.5,0.9-2.8,2-2.8c0.5,0,0.9,0.3,1.2,0.6l0.3-1.6h1.2 L37.5,15.3z"></path>
			<path d="M28.9,14C28.9,14,28.9,14,28.9,14c0,0.3,0.2,0.5,0.5,0.5l0,0c0.5-0.1,0.9-0.6,0.9-1.1c-0.1,0-0.2,0-0.3,0 C29.1,13.3,28.9,13.7,28.9,14z"></path>
		</symbol>
		<!-- Payment -->
		<symbol id="icon_payment" viewBox="0 0 15 12">
			<path d="M13.9,1.2H1.1v2.1h12.8V1.2z M13.9,5.5H1.1v5.2h12.8V5.5z M14.5,0.5C14.8,0.8,15,1.2,15,1.6v8.8 c0,0.4-0.1,0.8-0.4,1.1c-0.3,0.3-0.6,0.5-1,0.5H1.6c-0.4,0-0.8-0.2-1.1-0.5C0.2,11.2,0,10.8,0,10.4V1.6c0-0.4,0.1-0.8,0.4-1.1 C0.8,0.2,1.2,0,1.6,0h11.9C13.9,0,14.3,0.2,14.5,0.5z"></path>
		</symbol>
		<!-- Phone -->
		<symbol id="icon_phone" viewBox="0 0 14.2 14.2">
			<path d="M14.1,11c-0.2-0.2-0.5-0.4-0.8-0.5c-0.1-0.1-0.3-0.2-0.5-0.3c-0.2-0.1-0.4-0.2-0.6-0.4s-0.4-0.2-0.5-0.3 c0,0-0.1-0.1-0.3-0.2c-0.1-0.1-0.2-0.2-0.4-0.2C10.9,9,10.8,9,10.7,9c-0.2,0-0.4,0.1-0.5,0.3C10,9.5,9.9,9.7,9.7,9.9 c-0.2,0.2-0.3,0.4-0.5,0.6c-0.1,0.1-0.3,0.3-0.5,0.3c-0.1,0-0.2,0-0.2,0c-0.1,0-0.1-0.1-0.2-0.1c0,0-0.1-0.1-0.2-0.1 s-0.2-0.1-0.2-0.1C6.1,9.5,4.6,8.1,3.7,6.3c0,0,0-0.1-0.1-0.2S3.5,5.9,3.5,5.9c0-0.1-0.1-0.1-0.1-0.2c0-0.1,0-0.1,0-0.2 c0-0.2,0.1-0.3,0.3-0.5C3.8,4.8,4,4.6,4.2,4.5c0.2-0.2,0.4-0.4,0.6-0.6C5,3.8,5.1,3.6,5.1,3.4c0-0.1,0-0.2-0.1-0.3 C5,3,4.9,2.9,4.9,2.8C4.8,2.6,4.7,2.6,4.7,2.5C4.6,2.4,4.5,2.2,4.4,2S4.1,1.6,4,1.4C3.9,1.1,3.8,0.9,3.7,0.8C3.6,0.5,3.4,0.2,3.2,0 C3.1,0,3,0,3,0c-0.2,0-0.5,0-0.7,0.1C2,0.2,1.8,0.2,1.6,0.3C1.1,0.6,0.7,1,0.5,1.6C0.2,2.1,0,2.8,0,3.4c0,0.2,0,0.4,0,0.5 c0,0.2,0.1,0.4,0.1,0.6C0.2,4.7,0.3,4.9,0.3,5s0.1,0.3,0.2,0.6C0.6,5.8,0.7,6,0.7,6c0.2,0.6,0.5,1.2,0.8,1.8 c1.3,1.9,2.9,3.6,4.8,4.8c0.6,0.3,1.1,0.6,1.8,0.8c0.1,0,0.2,0.1,0.5,0.2s0.5,0.2,0.6,0.2c0.1,0,0.3,0.1,0.5,0.1 c0.2,0.1,0.4,0.1,0.6,0.1c0.8,0.1,1.7-0.1,2.4-0.5c0.5-0.2,0.9-0.6,1.2-1.1c0.1-0.2,0.2-0.5,0.2-0.7c0.1-0.2,0.1-0.5,0.1-0.7 C14.1,11.1,14.1,11,14.1,11L14.1,11L14.1,11z"></path>
		</symbol>
		<!-- Price -->
		<symbol id="icon_price" viewBox="0 0 12.5 24">
			<path d="M12.3,14.6c-0.1-0.4-0.2-0.7-0.4-1c-0.2-0.3-0.4-0.6-0.7-0.9c-0.3-0.2-0.5-0.5-0.8-0.7 c-0.3-0.2-0.7-0.4-1-0.6c-0.4-0.2-0.8-0.4-1-0.5s-0.6-0.2-1.1-0.4c-0.4-0.2-0.7-0.3-0.9-0.4C6.1,10.1,5.8,10,5.5,9.9 C5.2,9.8,5,9.6,4.7,9.5C4.5,9.3,4.4,9.2,4.2,9C4,8.9,3.9,8.7,3.8,8.5c-0.3-0.8,0-1.7,0.7-2.1c0.6-0.4,1.3-0.6,2.1-0.6 c0.4,0,0.8,0.1,1.1,0.2c0.3,0.1,0.7,0.2,1,0.3C9,6.4,9.2,6.5,9.5,6.7C9.7,6.8,9.9,7,10,7c0.1,0.1,0.2,0.1,0.2,0.2 c0.1,0.1,0.2,0.1,0.4,0.1c0.1,0,0.3-0.1,0.3-0.2l1.1-2C12.1,5,12,4.7,11.9,4.6c-0.1-0.1-0.1-0.1-0.2-0.2S11.4,4.2,11.2,4 c-0.3-0.2-0.6-0.4-0.9-0.5C9.9,3.4,9.6,3.2,9.2,3.1c-0.5-0.2-1-0.3-1.5-0.3V0.4C7.7,0.2,7.5,0,7.3,0c0,0,0,0,0,0H5.4 C5.2,0,5,0.2,5,0.4v2.4C3.7,3,2.5,3.7,1.6,4.6c-0.8,0.9-1.3,2-1.3,3.2c0,0.4,0,0.7,0.1,1c0.1,0.3,0.2,0.6,0.3,0.9 c0.1,0.3,0.3,0.5,0.5,0.8c0.2,0.2,0.4,0.4,0.6,0.7c0.2,0.2,0.5,0.4,0.7,0.6C2.7,12,3,12.2,3.2,12.3s0.5,0.3,0.8,0.4 c0.3,0.2,0.6,0.3,0.8,0.4c0.2,0.1,0.5,0.2,0.8,0.3c0.5,0.2,0.8,0.3,1.1,0.4s0.5,0.2,0.9,0.4c0.3,0.1,0.5,0.3,0.8,0.5 c0.2,0.2,0.3,0.4,0.4,0.6C9,15.5,9.1,15.8,9.1,16c0,0.7-0.3,1.3-0.8,1.6C7.7,18,7,18.2,6.4,18.2c-0.3,0-0.7,0-1-0.1 c-1.2-0.3-2.3-0.8-3.3-1.7l0,0c-0.1-0.1-0.2-0.1-0.3-0.1c-0.1,0-0.2,0.1-0.3,0.2l-1.4,1.8c-0.1,0.2-0.1,0.4,0,0.5 c0,0.1,0.1,0.1,0.2,0.2c0.2,0.2,0.4,0.3,0.6,0.5c0.3,0.2,0.6,0.5,1,0.6c0.4,0.2,0.9,0.4,1.4,0.6C3.9,21,4.4,21.1,5,21.2v2.3 C5,23.8,5.2,24,5.4,24h1.8c0.2,0,0.4-0.2,0.4-0.4c0,0,0,0,0,0v-2.3c1.3-0.2,2.6-0.8,3.5-1.8c0.9-1,1.4-2.2,1.3-3.5l0,0 C12.5,15.4,12.4,15,12.3,14.6z"></path>
		</symbol>
		<!-- Promocode -->
		<symbol id="icon_prcode" viewBox="0 0 17.2 13.3">
			<path d="M1.4,0C0.6,0,0,0.6,0,1.4v10.5c0,0.8,0.6,1.4,1.4,1.4h14.3c0.8,0,1.4-0.6,1.4-1.4V1.4 c0-0.8-0.6-1.4-1.4-1.4H1.4z M15.7,1.1c0.2,0,0.3,0.1,0.3,0.3V3H1.1V1.4c0-0.2,0.1-0.3,0.3-0.3H15.7L15.7,1.1z M1.4,12.2 c-0.2,0-0.3-0.1-0.3-0.3V6.3H16v5.6c0,0.2-0.1,0.3-0.3,0.3H1.4z M4.6,11.2v-1.1H2.3v1.1L4.6,11.2L4.6,11.2z M9.1,11.2v-1.1H5.7v1.1 L9.1,11.2L9.1,11.2z"></path>
		</symbol>
		<!-- Refresh -->
		<symbol id="icon_refresh" viewBox="0 0 12.8 12.8">
			<path d="M12.6,7.6c0-0.1-0.1-0.1-0.2-0.1h-1.6c-0.1,0-0.2,0.1-0.3,0.2c-0.1,0.3-0.3,0.7-0.4,1 c-0.8,1.3-2.2,2-3.6,2c-0.5,0-1.1-0.1-1.6-0.3c-0.5-0.2-1-0.5-1.3-0.9l1.1-1.1c0.2-0.2,0.2-0.5,0-0.8C4.6,7.6,4.4,7.5,4.3,7.5H0.5 C0.2,7.5,0,7.7,0,8v3.7c0,0.3,0.2,0.5,0.5,0.5c0.1,0,0.3-0.1,0.4-0.2L2,11.1c0.6,0.6,1.3,1,2,1.3c0.8,0.3,1.6,0.5,2.4,0.5 c1.5,0,2.9-0.5,4-1.4c1.1-0.9,1.9-2.2,2.2-3.6c0,0,0,0,0-0.1C12.6,7.7,12.6,7.6,12.6,7.6z M12.7,0.7c-0.2-0.2-0.5-0.2-0.7,0 c0,0,0,0,0,0l-1.1,1.1c-0.6-0.6-1.3-1-2.1-1.3C8.1,0.2,7.2,0,6.4,0C5,0,3.5,0.5,2.4,1.4C1.3,2.3,0.5,3.6,0.2,5v0.1 c0,0.1,0.1,0.3,0.3,0.3h1.7c0.1,0,0.2-0.1,0.3-0.2c0.1-0.3,0.3-0.7,0.4-1c0.8-1.3,2.2-2,3.6-2c1.1,0,2.1,0.4,2.9,1.1L8.2,4.4 C8,4.6,8,5,8.2,5.2c0.1,0.1,0.2,0.2,0.4,0.2h3.8c0.3,0,0.5-0.2,0.5-0.5V1.1C12.9,0.9,12.8,0.8,12.7,0.7L12.7,0.7z"></path>
		</symbol>
		<!-- Discount -->
		<symbol id="icon_discount" viewBox="0 0 15.9 12.7">
			<path d="M2.7,3.7c-0.6,0-1.1-0.5-1.1-1.1s0.5-1.1,1.1-1.1s1.1,0.5,1.1,1.1c0,0.3-0.1,0.6-0.3,0.8 C3.2,3.6,3,3.7,2.7,3.7z M12.4,6.7l-6-6C5.9,0.3,5.2,0,4.6,0H1.1C0.5,0,0,0.5,0,1.1v3.5c0,0.3,0.1,0.7,0.2,1 c0.1,0.3,0.3,0.6,0.5,0.8l6,6c0.2,0.2,0.5,0.3,0.8,0.3c0.3,0,0.6-0.1,0.8-0.3l4.1-4.1c0.2-0.2,0.3-0.5,0.3-0.8 C12.7,7.2,12.6,6.9,12.4,6.7L12.4,6.7L12.4,6.7z M15.6,6.7l-6-6C9.1,0.3,8.4,0,7.8,0H5.9c0.7,0,1.3,0.3,1.8,0.8l6,6 C13.9,6.9,14,7.2,14,7.5c0,0.3-0.1,0.6-0.3,0.8l-3.9,3.9c0.1,0.1,0.3,0.3,0.4,0.4c0.2,0.1,0.3,0.1,0.5,0.1c0.3,0,0.6-0.1,0.8-0.3 l4.1-4.1c0.2-0.2,0.3-0.5,0.3-0.8C15.9,7.2,15.8,6.9,15.6,6.7L15.6,6.7L15.6,6.7z"></path>
		</symbol>
		<!-- Search -->
		<symbol id="icon_search" viewBox="0 0 14.8 14.8">
			<path d="M6.3,10.3c-2.2,0-4-1.8-4-4c0-2.2,1.8-4,4-4c2.2,0,4,1.8,4,4c0,1.1-0.4,2.1-1.2,2.8 C8.4,9.9,7.3,10.3,6.3,10.3z M14.5,12.9l-3.1-3.1c0.7-1,1.1-2.3,1.1-3.6c0-0.8-0.2-1.7-0.5-2.4c-0.6-1.5-1.8-2.7-3.3-3.3 c-1.6-0.7-3.3-0.7-4.9,0C2.3,1.1,1.1,2.3,0.5,3.8c-0.7,1.6-0.7,3.3,0,4.9c0.6,1.5,1.8,2.7,3.3,3.3c0.8,0.3,1.6,0.5,2.4,0.5 c1.3,0,2.5-0.4,3.6-1.1l3.1,3.1c0.2,0.2,0.5,0.3,0.8,0.3c0.6,0,1.1-0.5,1.1-1.1C14.8,13.4,14.7,13.1,14.5,12.9L14.5,12.9L14.5,12.9z"></path>
		</symbol>
		<!-- Sell Phone -->
		<symbol id="icon_sellphone" viewBox="0 0 9 14.1">
			<path d="M4.4,13.6c-0.5,0-0.9-0.4-0.9-0.9s0.4-0.9,0.9-0.9s0.9,0.4,0.9,0.9c0,0.2-0.1,0.5-0.3,0.6 C4.9,13.5,4.7,13.6,4.4,13.6z M7.8,11.1c-0.1,0.1-0.2,0.1-0.3,0.1H1.4c-0.2,0-0.4-0.2-0.4-0.4V3c0-0.2,0.2-0.4,0.4-0.4h6.1 c0.2,0,0.4,0.2,0.4,0.4v7.9C7.9,11,7.8,11.1,7.8,11.1L7.8,11.1z M5.3,1.6H3.5c-0.1,0-0.2-0.1-0.2-0.2c0-0.1,0.1-0.2,0.2-0.2h1.8 c0.1,0,0.2,0.1,0.2,0.2C5.5,1.5,5.4,1.6,5.3,1.6L5.3,1.6z M8.6,0.4C8.3,0.1,8,0,7.6,0H1.4c-0.4,0-0.7,0.2-1,0.4C0.2,0.6,0,0.9,0,1.2 v11.4c0,0.8,0.6,1.4,1.4,1.4h6.2c0.8,0,1.4-0.6,1.4-1.4V1.2C9,0.9,8.9,0.6,8.6,0.4z"></path>
		</symbol>
		<!-- Send -->
		<symbol id="icon_send" viewBox="0 0 14 14">
			<path d="M13.5,0c-0.1,0-0.2,0-0.3,0.1l-13,7.5C0,7.7-0.1,8,0.1,8.3c0.1,0.1,0.1,0.2,0.2,0.2l3.1,1.3l8.4-7.2L5,10.8 v2.7c0,0.1,0,0.2,0.1,0.3c0.1,0.1,0.1,0.1,0.2,0.2c0.1,0,0.1,0,0.2,0c0.1,0,0.3-0.1,0.4-0.2l1.9-2.3l3.5,1.4c0.1,0,0.1,0,0.2,0 c0.1,0,0.2,0,0.2-0.1c0.1-0.1,0.2-0.2,0.3-0.4l2-12C14,0.3,13.9,0.1,13.5,0C13.6,0,13.5,0,13.5,0L13.5,0z"></path>
		</symbol>
		<!-- Service -->
		<symbol id="icon_service" viewBox="0 0 20.6 20.6">
			<path d="M15.9,8.6c0-0.2-0.1-0.4-0.3-0.6l-1.4-1.4c-0.3-0.3-0.9-0.3-1.2,0c0,0,0,0,0,0l-3.7,3.7l-2-2 C7.1,8,6.6,8,6.3,8.3c0,0,0,0,0,0L4.9,9.7c-0.3,0.3-0.3,0.9,0,1.2c0,0,0,0,0,0l3.9,3.9c0.3,0.3,0.9,0.3,1.2,0c0,0,0,0,0,0l5.7-5.7 C15.9,9,15.9,8.8,15.9,8.6z M13.9,16.6c-2.3,1.3-5,1.3-7.3,0c-1.1-0.6-2-1.6-2.7-2.7c-1.3-2.3-1.3-5,0-7.3c0.6-1.1,1.6-2,2.7-2.7 c2.3-1.3,5-1.3,7.3,0c1.1,0.6,2,1.6,2.7,2.7c1.3,2.3,1.3,5,0,7.3C16,15,15,15.9,13.9,16.6L13.9,16.6z M15.4,1.4 c-3.2-1.8-7.1-1.8-10.3,0C3.6,2.3,2.3,3.6,1.4,5.1c-1.8,3.2-1.8,7.1,0,10.3c0.9,1.6,2.2,2.8,3.7,3.7c3.2,1.8,7.1,1.8,10.3,0 c1.6-0.9,2.8-2.2,3.7-3.7c1.8-3.2,1.8-7.1,0-10.3C18.3,3.6,17,2.3,15.4,1.4L15.4,1.4z"></path>
		</symbol>
		<!-- Star -->
		<symbol id="icon_star" viewBox="0 0 13.9 13.3">
			<path d="M13.5 4.8l-4.2-.6L7.4.3a.5.5 0 0 0-.5-.3c-.2 0-.3.2-.3.3L4.7 4.2l-4.2.6c-.3-.1-.5.1-.5.4l.2.4 3 3-.7 4.2v.2l.1.3.3.1.3-.1 3.8-2 3.8 2 .3.1.3-.1.1-.3v-.2l-.7-4.2 3-3 .2-.4c-.1-.3-.3-.5-.5-.4z"></path>
		</symbol>
		<!-- Comments -->
		<symbol id="icon_comment" viewBox="0 0 14 12.8">
			<path d="M5.3,12.8c0.2,0,0.3-0.1,0.5-0.2l2.5-2.5h4.1c0.4,0,0.7-0.1,0.9-0.4c0.3-0.2,0.6-0.6,0.7-1V1.2 c-0.1-0.4-0.4-0.7-0.7-0.9C13,0.1,12.7,0,12.3,0H1.7C1.3,0,1,0.1,0.7,0.4C0.4,0.6,0.1,0.9,0,1.2v7.5c0.1,0.4,0.4,0.7,0.7,1 C1,10,1.3,10.1,1.7,10.1h2.7v2c0,0.4,0.3,0.6,0.6,0.7c0,0,0,0,0,0H5.3L5.3,12.8z M1,9V1.2h12V9H7.7l-2.4,2.5V9H1z"></path>
		</symbol>
		<!-- Time -->
		<symbol id="icon_time" viewBox="0 0 13.7 13.7">
			<path d="M7.9,3.5C7.9,3.4,7.8,3.4,7.7,3.4H7.1C7,3.4,6.9,3.5,6.9,3.7c0,0,0,0,0,0v3.1h-2C4.7,6.8,4.6,7,4.6,7.1 c0,0,0,0,0,0v0.6C4.6,7.9,4.7,8,4.8,8c0,0,0,0,0,0h2.9C7.9,8,8,7.9,8,7.7c0,0,0,0,0,0v-4C8,3.6,8,3.6,7.9,3.5z M9.3,11.1 c-1.5,0.9-3.4,0.9-4.9,0c-0.7-0.4-1.3-1-1.8-1.8c-0.9-1.5-0.9-3.4,0-4.9c0.4-0.7,1-1.3,1.8-1.8c1.5-0.9,3.4-0.9,4.9,0 c0.7,0.4,1.3,1,1.8,1.8c0.9,1.5,0.9,3.4,0,4.9C10.6,10,10,10.6,9.3,11.1z M10.3,0.9c-2.1-1.2-4.8-1.2-6.9,0c-1,0.6-1.9,1.5-2.5,2.5 c-1.2,2.1-1.2,4.8,0,6.9c0.6,1,1.5,1.9,2.5,2.5c2.1,1.2,4.8,1.2,6.9,0c1-0.6,1.9-1.5,2.5-2.5c1.2-2.1,1.2-4.8,0-6.9 C12.2,2.4,11.3,1.5,10.3,0.9L10.3,0.9z"></path>
		</symbol>
		<!-- Twitter -->
		<symbol id="icon_tw" viewBox="0 0 15.7 12.8">
			<path d="M14.1,3.2l0,0.4c0,2.3-0.9,4.4-2.4,6.2c-2.4,2.6-6,3.6-9.4,2.6c-0.8-0.2-1.6-0.6-2.3-1.1c0.3,0,0.5,0,0.8,0 c0.7,0,1.5-0.1,2.1-0.4c0.7-0.2,1.3-0.6,1.8-1c-1.4,0-2.6-0.9-3-2.3c0.2,0,0.4,0.1,0.6,0.1c0.3,0,0.6,0,0.8-0.1 C2.5,7.5,1.8,7.1,1.4,6.6C0.9,6,0.6,5.3,0.6,4.5v0c0.4,0.2,0.9,0.4,1.4,0.4c-0.4-0.3-0.8-0.7-1-1.1c-0.5-1-0.5-2.2,0-3.2 c0.8,1,1.8,1.8,2.9,2.4c1.2,0.6,2.4,0.9,3.7,1C7.7,3.7,7.6,3.5,7.6,3.2c0-0.9,0.3-1.7,0.9-2.3C9.2,0.3,10,0,10.8,0 c0.9,0,1.8,0.4,2.4,1c0.7-0.1,1.4-0.4,2-0.8C15,1,14.5,1.6,13.9,2c0.6-0.1,1.2-0.3,1.8-0.5C15.2,2.1,14.7,2.7,14.1,3.2L14.1,3.2 L14.1,3.2z"></path>
		</symbol>
		<!-- User -->
		<symbol id="icon_user" viewBox="0 0 11 12">
			<path d="M11,9.2c0-0.3-0.1-0.6-0.1-0.9c-0.1-0.3-0.1-0.6-0.2-0.8c-0.1-0.3-0.2-0.5-0.3-0.8C10.2,6.5,10,6.3,9.8,6.1 C9.6,5.9,9.4,5.8,9.2,5.7C8.9,5.5,8.6,5.5,8.3,5.5C8.2,5.5,8.1,5.6,8,5.7C7.8,5.8,7.6,5.9,7.4,6C7.1,6.2,6.8,6.3,6.5,6.4 c-0.7,0.2-1.4,0.2-2.1,0C4.2,6.3,3.9,6.2,3.6,6C3.4,5.9,3.2,5.8,3,5.7C2.9,5.6,2.8,5.5,2.7,5.5c-0.3,0-0.6,0-0.9,0.2 C1.6,5.8,1.4,5.9,1.2,6.1C1,6.3,0.8,6.5,0.7,6.7C0.5,6.9,0.4,7.2,0.3,7.5C0.3,7.7,0.2,8,0.1,8.3C0.1,8.6,0,8.9,0,9.2 C0,9.4,0,9.7,0,10c0,0.6,0.2,1.1,0.6,1.5C1,11.8,1.5,12,2.1,12h6.8c0.6,0,1.1-0.2,1.5-0.5c0.4-0.4,0.6-0.9,0.6-1.5 C11,9.7,11,9.4,11,9.2z M5.5,0c-1.7,0-3,1.3-3,3c0,1.7,1.3,3,3,3s3-1.3,3-3c0-0.8-0.3-1.6-0.9-2.1C7.1,0.3,6.3,0,5.5,0z"></path>
		</symbol>
		<!-- Visa -->
		<symbol id="icon_visa" viewBox="0 0 40 12">
			<path d="M37.4,0.2h-2.5c-0.7-0.1-1.4,0.3-1.7,1l-4.8,10.7h3.4c0,0,0.6-1.4,0.7-1.7h4.2c0.1,0.4,0.4,1.7,0.4,1.7h3 L37.4,0.2z M33.4,7.7c0.3-0.7,1.3-3.2,1.3-3.2c0,0,0.3-0.7,0.4-1.1l0.2,1c0,0,0.6,2.8,0.8,3.4L33.4,7.7L33.4,7.7z M28.6,8 c0,2.4-2.2,4-5.7,4c-1.2,0-2.5-0.2-3.6-0.6l0.5-2.6L20.1,9c1,0.4,2,0.6,3.1,0.6c0.9,0,1.9-0.4,1.9-1.1c0-0.5-0.4-0.9-1.7-1.4 c-1.2-0.6-2.9-1.5-2.8-3.2c0-2.3,2.3-3.8,5.5-3.8c1,0,2,0.2,2.9,0.5L28.6,3l-0.3-0.1c-0.8-0.3-1.6-0.5-2.4-0.4c-1.3,0-1.9,0.5-1.9,1 c0,0.5,0.7,0.9,1.8,1.4C27.7,5.7,28.6,6.7,28.6,8L28.6,8z M0,0.3l0-0.2h5C5.7,0,6.3,0.4,6.5,1.1l1.1,5.1C6.5,3.5,3.9,1.3,0,0.3z M14.7,0.2L9.6,11.8H6.1L3.2,2.1C5.1,3.3,6.7,5,7.7,6.9l0.3,1.2l3.2-7.9L14.7,0.2L14.7,0.2L14.7,0.2z M16,0.2h3.3l-2,11.6H14L16,0.2z"></path>
		</symbol>
		<!-- Vkontakte -->
		<symbol id="icon_vk" viewBox="0 0 17.7 10.1">
			<path d="M14.8,5.6c0.4-0.8,0.9-1.5,1.5-2.2c1.1-1.4,1.5-2.3,1.4-2.7c-0.1-0.2-0.3-0.3-0.5-0.3H14c-0.1,0-0.2,0-0.2,0.1 c-0.1,0.1-0.1,0.1-0.2,0.2l0,0.1l-0.3,0.7c-0.2,0.5-0.4,1-0.7,1.4c-0.3,0.7-0.8,1.3-1.3,1.8c-0.3,0.2-0.5,0.3-0.6,0.2 c-0.2-0.2-0.3-0.5-0.3-0.8c0-0.3,0-0.7,0-1c0-0.9,0-1.7,0-2.1c0.1-0.4-0.2-0.8-0.6-0.8C9.6,0.1,9.4,0.1,9.3,0C9,0,8.8,0,8.5,0 C8,0,7.6,0,7.2,0c-0.3,0-0.6,0.1-0.9,0.2C6.1,0.3,6,0.4,5.9,0.6c-0.1,0.1-0.1,0.2,0,0.2c0.1,0,0.2,0,0.4,0.1C6.4,0.9,6.6,1,6.7,1.1 c0.1,0.2,0.2,0.5,0.2,0.8l0,0.4v1.2C7,4,6.9,4.5,6.6,4.9C6.3,5,6,4.9,5.9,4.6C5.4,4.1,5,3.5,4.7,2.9C4.4,2.4,4.2,2,4,1.5L3.6,0.8 c0-0.1-0.1-0.2-0.2-0.2C3.4,0.5,3.3,0.5,3.3,0.5H0.3c-0.1,0-0.2,0.1-0.3,0.1C0,0.7,0,0.8,0,0.9L0,1c0,0.1,0.5,1,1.3,2.6 c0.8,1.6,1.8,3,2.9,4.3c0.8,0.9,1.8,1.5,3,1.8c0.5,0.1,0.9,0.2,1.4,0.1l1.2,0c0.1,0,0.2,0,0.3-0.1c0.1-0.1,0.1-0.2,0.1-0.3l0-0.1 c0-0.3,0-0.5,0-0.8c0-0.4,0.2-0.7,0.6-0.9c0.5,0,0.9,0.3,1.1,0.7c0.4,0.5,0.8,0.9,1.3,1.3c0.4,0.2,0.8,0.3,1.2,0.3l2.4,0 c0.2,0,0.4-0.1,0.5-0.2c0.3-0.1,0.3-0.4,0.1-0.9c-0.1-0.2-0.2-0.4-0.4-0.6c-0.4-0.5-0.9-1-1.4-1.5l0,0C15,6.4,14.7,5.9,14.8,5.6z"></path>
		</symbol>
	</svg>
</body>
</html>