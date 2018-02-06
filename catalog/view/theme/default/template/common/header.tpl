<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
	<!--<![endif]-->
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php echo $title;  ?></title>
		<base href="<?php echo $base; ?>" />
		<?php if ($description) { ?>
			<meta name="description" content="<?php echo $description; ?>" />
		<?php } ?>
		<?php if ($keywords) { ?>
			<meta name="keywords" content= "<?php echo $keywords; ?>" />
		<?php } ?>
		<meta property="og:title" content="<?php echo $title; ?>" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="<?php echo $og_url; ?>" />
		<?php if ($og_image) { ?>
			<meta property="og:image" content="<?php echo $og_image; ?>" />
			<?php } else { ?>
			<meta property="og:image" content="<?php echo $logo; ?>" />
		<?php } ?>
		<meta property="og:site_name" content="<?php echo $name; ?>" />
		<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
		<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
		<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
		<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
		
		<!-- for bycicles-->
		<link href="catalog/view/theme/default/stylesheet/bootstrap.css" rel="stylesheet">
		<link href="catalog/view/theme/default/stylesheet/general.css" rel="stylesheet"><!-- conflict style-->
		<link href="catalog/view/theme/default/stylesheet/normal.css" rel="stylesheet">
		<link href="catalog/view/theme/default/stylesheet/styles.css" rel="stylesheet">
		<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/common.css">
		
		<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/magnific-popup.css">
	
	    <script src="catalog/view/javascript/magnific-popup/jquery.magnific-popup.min.js"></script>
		
	<!--script src="http://code.jquery.com/jquery-1.10.2.js"></script-->
	<!--script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script-->
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	    <script src="catalog/view/javascript/scripts.js"></script>
		
		
		<?php foreach ($styles as $style) { ?>
			<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
		<?php } ?>
		<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
		<?php foreach ($links as $link) { ?>
			<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
		<?php } ?>
		<?php foreach ($scripts as $script) { ?>
			<script src="<?php echo $script; ?>" type="text/javascript"></script>
		<?php } ?>
		<?php foreach ($analytics as $analytic) { ?>
			<?php echo $analytic; ?>
		<?php } ?>
	</head>
	<body>
		<!-- Header -->
		<header class="header">
			<!-- header top -->
			<div class="header-top hidden-sm hidden-xs">
				<div class="container">				
					<div class="row">						
						<div class="col-md-6">
							<?php echo $language; ?>
							<nav class="header-nav header-devider">
								<menu class="header-nav_items">
									
									<?php var_dump($informations) ?>
									<?php foreach ($informations as $information) { ?>
										<?php if ($information['sort_order']<'700'){?>
											<li class="header-nav_item"><a href="<?php echo $information['href']; ?>" class="header-nav_link"><?php echo $information['title']; ?></a></li>
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
											<?php if ($information['sort_order']=='820'){ $shippingInf = $information['title']; $shippingInfHref = $shipping['href']; } ?>	
											<?php if ($information['sort_order']=='830'){ $newsInf = $information['title']; $newsInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='840'){ $warrantyInf = $information['title']; $warrantyInfHref = $information['href']; } ?>											
											<?php if ($information['sort_order']=='850'){ $howToInf = $information['title']; $howToInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='860'){ $reclamationInf = $information['title']; $reclamationInfHref = $information['href']; } ?>	
											<?php if ($information['sort_order']=='870'){ $questionsInf = $information['title']; $questionsInfHref = $information['href']; } ?>											
											<?php if ($information['sort_order']=='900'){ $schemaInf = $information['title']; $schemaInfHref = $information['href']; } ?>											
										<?php } ?>	
									<?php } ?>	
									<li class="header-nav_item">
									<a href="<?php echo $contact; ?>" class="header-nav_link"><?php echo $text_contact; ?></a></li>		
								</menu>
							</nav>
						</div>

						<div class="col-md-6">
							<div class="header-user">
								<ul class="header-user_items header-devider">
									<li class="header-user_item">
										<a href="#" class="header-user_link">
											<span class="header-user-icon">
												<span class="icon">
													<svg>
														<use xlink:href="#icon_prcode"></use>
													</svg>
												</span>
											</span>
											<span class="header-user-text"><?php echo $text_promocode; ?></span>
										</a>
									</li>
								</ul>	
								
            <ul class="header-user_items">
              <li class="header-user_item">
                <a id="wishlist_header" href="<?php echo $wishlist; ?>" class="header-user_link">
				<span class="header-user-icon">
                  <span class="icon">
                    <svg>
                      <use xlink:href="#icon_favourite"></use>
                    </svg>
                  </span>
				</span>
                  <span class="add-count add-count_favourite header-user-count" data-value="<?php echo $text_wishlist; ?>"></span>
                </a>
              </li>
              <li class="header-user_item">
                <a href="<?php echo $compare; ?>" class="header-user_link ajax_compare">
										<span class="header-user-icon">
											<span class="icon">
												<svg>
													<use xlink:href="#icon_compare"></use>
												</svg>
											</span>
										</span>
                  <span class="add-count add-count_compare header-user-count" data-value="<?php echo $text_compare; ?>"></span>
                </a>
              </li>
              <li class="header-user_item"><?php echo $cart; ?></li>
            </ul>
								
								
							</div>
						</div>
					</div>
				</div>
			</div>	
		</header>
		
		<!-- header bottom -->
		<header>	
			<div class="header-bottom">
				<div class="container">
					<div class="row">
						
						<div class="col-lg-3 col-md-4">
							<a href="/" class="header-logo">
								<picture>
									<img src="catalog/view/theme/default/image/logo.svg" alt="ВЕЛОСКЛАД Интернет-магазин велосипедов">
								</picture>
							</a>
						</div>
						
		        <div class="col-lg-4 col-md-5">
          <div class="header-search-wrap">
            <div class="header-popular">
              Популярное:
              <menu class="header-popular_list">
                <?php foreach ($popular_queries as $popular_query) { ?>
                <li class="header-popular_item">
                  <a href="/index.php?route=product/search&search=<?php echo $popular_query['name'];?>" class="header-popular_link link"><?php echo $popular_query['name'];?></a>
                </li>
                <?php } ?>
              </menu>
            </div>
            <?php echo $search; ?>
          </div>
        </div>		
						<div class="col-lg-5 col-md-3">
							<div class="header-phone">
            <div class="phone-wrap">
              <a href="tel:<?php echo $telephone2; ?>" class="phone-call"><?php echo $telephone; ?></a>
              <span class="icon">
              <svg>
                <use xlink:href="#icon_sellphone"></use>
              </svg>
            </span>
              <time class="phone-time"><?php echo $open; ?></time>
            </div>								
								<a href="#callback" class="btn btn_cta header-cta popup-btn visible-lg">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_phone"></use>
											</svg>
										</span>
									</span>
									<span class="btn-text">Заказать звонок</span>
								</a>
								
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
		</header>
		
		<?php if ($categories) { ?>
			<div class="container">
				<nav id="menu" class="navbar">
					<div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
						<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
					</div>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">	
							<?php foreach ($categories as $category) { ?>
								<?php if ($category['children']) { ?>
									
									<li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']."__"; ?></a>
										<div class="dropdown-menu">
											<div class="dropdown-inner">		
												<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
													<ul class="list-unstyled">
														<?php foreach ($children as $child) { ?>
															<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
														<?php } ?>
													</ul>
												<?php } ?>
												
												
											</div>
										<a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
									</li>
									<?php } else { ?>
									<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
								<?php } ?>
							<?php } ?>
						</ul>
					</div>
				</nav>
			</div>
		<?php } ?>
		
		<header>
			<div class="nav hidden-sm hidden-xs">
				<div class="container">
					<div class="nav-wrap">
						<a href="/index.php?route=product/special" class="nav-link link-discount">
							<span class="btn-icon">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_discount"></use>
									</svg>
								</span>
							</span>
							<span class="btn-text">Скидки</span>
						</a>
						<nav class="nav-list">
							<menu class="nav-items">
								
								<?php if ($categories) { ?>
									<?php foreach ($categories as $category) { ?>
										<li class="nav-item"><a href="<?php echo $category['href']; ?>" class="nav-link"><span><?php echo $category['name']; ?></span></a>
											<?php if ($category['children']) { ?>
												
												
												<?php for ($i = 0; $i < count($category['children']);) { ?>
													<ul class="nav-items_sub">
														<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
														<?php for (; $i < $j; $i++) { ?>
															<?php if (isset($category['children'][$i])) { ?>
																<li class="nav-item_sub"><a href="<?php echo $category['children'][$i]['href']; ?>" class="nav-link_sub" ><?php echo $category['children'][$i]['name']; ?></a></li>
															<?php } ?>
														<?php } ?>
													</ul>
												<?php } ?>
											<?php } ?>
										</li>
									<?php } ?>
								</ul>
							<?php } ?>
						</menu>
					</nav>
				</div>
			</div>
		</div>
	</header>		
	
		<!-- POPUPS -->
	<section class="popup" style="display: none;">

		<!-- order  -->
		<div id="order" class="modal modal-offer">
			<h3 class="title modal-title">Оформление заказа</h3>
			<div class="form-order-wrap">
				<form id="order-info" action="" method="" class="ajax-form">

					<!-- name and phone -->
					<div class="order-step">
						<span class="order-step-title">1. Ваши данные</span>
						<div class="order-step-row">
							<div class="row min">
								<div class="col-sm-2">
									<div class="order-step-label">Ваше ФИО*</div>
								</div>
								<div class="col-sm-10">
									<div class="row min">
										<div class="col-sm-4">
											<input type="text" name="surmane" class="input input_order" placeholder="Фамилия" required>
										</div>
										<div class="col-sm-4">
											<input type="text" name="name" class="input input_order" placeholder="Имя" required>
										</div>
										<div class="col-sm-4">
											<input type="text" name="fathername" class="input input_order" placeholder="Отчество" required>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="order-step-row">
							<div class="row min">
								<div class="col-sm-2">
									<div class="order-step-label">Телефон*</div>
								</div>
								<div class="col-sm-10">
									<input type="text" name="phone" class="input input_order" placeholder="" required>
								</div>
							</div>
						</div>
					</div>
					
					<!-- delivery -->
					<div class="order-step">
						<span class="order-step-title">2. Доставка</span>
						<p class="modal-text">Бесплатная доставка Новой Почтой в течении 1-3 дней</p>
						<div class="order-list-type">
							<div class="row min">
								<div class="col-sm-2"></div>
								<div class="col-sm10">
									<ul class="check-radio">
										<li>
											<input type="radio" id="himself" value="himself" name="delivery" class="input_radio" checked>
											<label for="himself" class="input_label">Самовывоз</label>
										</li>
										<li>
											<input type="radio" id="np-warehouse" value="np-warehouse" name="delivery" class="input_radio">
											<label for="np-warehouse" class="input_label">Новая Почта - Склад</label>
										</li>
										<li>
											<input type="radio" id="np-corier" value="np-corier" name="delivery" class="input_radio">
											<label for="np-corier" class="input_label">Новая Почта - Курьер</label>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
						<!-- nova poshta - warehouse -->
						<div id="warehouse-info" class="order-delivery-details">
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Область</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="region" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Город</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="city" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">№ склада*</div>
									</div>
									<div class="col-sm-10">
										<div class="row min">
											<div class="col-sm-6">
												<input type="text" name="warehouse" class="input input_order" placeholder="" required>
												<span class="modal-text_small">* - укажите грузовое отделение</span>
											</div>
											<div class="col-sm-6">
												<a href="#" class="link order-warehouse-map">Карта складов</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<!-- nova poshta - corier -->
						<div id="warehouse-corier" class="order-delivery-details">
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Город</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="city" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Улица</div>
									</div>
									<div class="col-sm-10">
										<input type="text" name="street" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Дом</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="house" class="input input_order" placeholder="" required>
									</div>
									<div class="col-sm-2">
										<div class="order-step-label">Квартира</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="room" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
							<div class="order-step-row">
								<div class="row min">
									<div class="col-sm-2">
										<div class="order-step-label">Подъезд</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="entrance" class="input input_order" placeholder="" required>
									</div>
									<div class="col-sm-2">
										<div class="order-step-label">Этаж</div>
									</div>
									<div class="col-sm-4">
										<input type="text" name="floor" class="input input_order" placeholder="" required>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- payment -->
					<div class="order-step">
						<span class="order-step-title">3. Метод оплаты</span>
						<div class="order-list-type">
							<div class="row min">
								<div class="col-sm-2"></div>
								<div class="col-sm-10">
									<ul class="check-radio">
										<li>
											<input type="radio" id="paybefore" value="paybefore" name="payment" class="input_radio" checked>
											<label for="paybefore" class="input_label">Полная предоплата</label>
										</li>
										<li>
											<input type="radio" id="cod" value="cod" name="payment" class="input_radio">
											<label for="cod" class="input_label">Наложеный платеж<span class="input_label-info">( 2% от суммы товара )</span></label>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<!-- add comment -->
					<div class="order-step">
						<div class="order-comment">
							<a href="javascript:void(0);" class="link order-comment-link">Добавить комментарий к заказу</a>
							 <textarea id="ordermssg" placeholder="Сообщение" name="comment" class="input input_area"></textarea>
						</div>
					</div>
					
					<!-- order button -->
					<div class="order-btn">
						<a href="#ordersuccess" class="btn btn_act popup-btn">Оформить заказ</a>
					</div>

				</form>
			</div>
		</div>

		<!-- add to cart -->
		<div id="addtocart" class="modal modal-big modal-cart">
			<h3 class="title modal-title">Моя корзина</h3>
			<!-- show when the catr is empty -->
			<p class="modal-text text-center hidden">В корзине пока нет товаров</p>
			<!-- show added items -->
			<div class="cart-items-wrap">
				<div class="mini-titles hidden-xs">
					<div class="row min">
						<div class="col-sm-7"><span>Название товара</span></div>
						<div class="col-sm-3 text-center"><span>Количество</span></div>
						<div class="col-sm-2 text-right"><span>Сума</span></div>
					</div>
				</div>
				<!-- item in cart -->
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-1.jpg" alt="Formula Spark DD 29 2017">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Formula Spark DD 29" 2017</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">4873 грн</span>
										<span class="cart-item-price_old">3324 грн</span>
									</span>
								</div>

							</div>
						</div>

						<!-- item quantity -->
						<div class="col-sm-3 col-xs-6">
							<div class="cart-item-count">
								<form class="form-counter">
									<button class="input_control input_minus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_minus"></use>
											</svg>
										</span>
									</button>

									<input type="text" class="input input_count" value="1">

									<button class="input_control input_plus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_plus"></use>
											</svg>
										</span>
									</button>
								</form>
							</div>				
						</div>
							
						<!-- item sum -->
						<div class="col-sm-2 col-xs-6">
							<div class="cart-item-sum">
								<span class="cart-item-sum-text">4873 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-2.jpg" alt="Шлем Abus TEC-TICAL Pro v.2 Nutrixxion L (58-62)">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Шлем Abus TEC-TICAL Pro v.2 Nutrixxion L (58-62)</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">3899 грн</span>
										<span class="cart-item-price_old">4125 грн</span>
									</span>
								</div>

							</div>
						</div>

						<!-- item quantity -->
						<div class="col-sm-3 col-xs-6">
							<div class="cart-item-count">
								<form class="form-counter">
									<button class="input_control input_minus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_minus"></use>
											</svg>
										</span>
									</button>

									<input type="text" class="input input_count" value="1">

									<button class="input_control input_plus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_plus"></use>
											</svg>
										</span>
									</button>
								</form>
							</div>				
						</div>
							
						<!-- item sum -->
						<div class="col-sm-2 col-xs-6">
							<div class="cart-item-sum">
								<span class="cart-item-sum-text">3899 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>
				<div class="cart-item">
					<div class="row min">
						<!-- item info -->
						<div class="col-sm-7">
							<div class="cart-item-content">

								<div class="cart-item-img">
									<img src="images/cart/item-3.jpg" alt="Флягодержатель алюминиевый, Simpla Alu-Star">
								</div>

								<div class="cart-item-text">
									<a href="#" class="cart-item-title">Флягодержатель алюминиевый, Simpla Alu-Star</a>
									<span class="cart-item-price-wrap">
										<span class="cart-item-price">75 грн</span>
									</span>
								</div>

							</div>
						</div>

						<!-- item quantity -->
						<div class="col-sm-3 col-xs-6">
							<div class="cart-item-count">
								<form class="form-counter">
									<button class="input_control input_minus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_minus"></use>
											</svg>
										</span>
									</button>

									<input type="text" class="input input_count" value="1">

									<button class="input_control input_plus">
										<span class="icon icon_control">
											<svg>
												<use xlink:href="#icon_plus"></use>
											</svg>
										</span>
									</button>
								</form>
							</div>				
						</div>
							
						<!-- item sum -->
						<div class="col-sm-2 col-xs-6">
							<div class="cart-item-sum">
								<span class="cart-item-sum-text">75 грн</span>
							</div>							
						</div>
					
					<!-- item delete button -->
					<button class="delete-item" title="Удалить">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_cross"></use>
							</svg>
						</span>
					</button>

					</div>
				</div>

				<!-- total sum -->
				<div class="cart-total-wrap">
					<span class="cart-total-text">Итого:</span>
					<span class="cart-total-sum">27599 грн</span>
				</div>

				<!-- Action Buttons -->
				<div class="row min">
					<div class="col-sm-6">
						<div class="modal-btn">
							<a href="javascript:void(0);" class="btn btn_default popup-close">Продолжить покупки</a>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="modal-btn text-right">
							<a href="#order" class="btn btn_act popup-btn">Оформить заказ</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- callback -->
		<div id="callback" class="modal-oneclick">
		
			<form action="" method="" class="ajax-form">
				<h3 class="title modal-title"><?php echo $modal_request_call; ?></h3>
				<div class="form-group">
					<input type="text" name="callbackname" class="input input_modal" placeholder="<?php echo $modal_name_placeholder."*"; ?>" required>
					<input type="text" name="callbacktel" class="input input_modal" placeholder="<?php echo $modal_tel_placeholder; ?>*"  required pattern="[0-9_-]{10}" title="Формат ХХХ ХХ ХХ ХХХ">
				</div>
				<p class="modal-text_small"><?php echo $modal_text_small; ?></p>
				<input type="submit" name="callbackbtn"  id = "callbackbtn"  class="btn btn_act btn_submit" value="<?php echo $modal_btn_send; ?>">
			</form>
		</div>
		

		
		
		
		
		<!-- enter promocode -->
		<div id="promocode" class="modal">
			<form action="" method="" class="ajax-form">
				<h3 class="title modal-title">Введите промокод</h3>
				<p class="modal-text">Вход для владельцев дисконтных карт</p>
				<div class="form-group">
					<input type="text" name="cardnumber" class="input input_modal" placeholder="Номер карты" required>
				</div>
				<input type="submit" name="cardnumberbtn" class="btn btn_act btn_submit" value="Войти">
			</form>
		</div>

		<!-- one click -->
		<div id="oneclick" class="modal-oneclick">
			<form action="" method="" class="ajax-form">
				<h4 class="title modal-title modal-title_min">Купить в 1 клик</h4>
				<p class="modal-text">Укажите свой номер телефона и наш менеджер свяжется с вами для оформления заказа на эту модель</p>		
				<div class="row min">
					<div class="col-sm-7">
						<div class="form-group_oneclick">
							<input type="text" name="oneclicktel" class="input input_modal" placeholder="Введите номер телефона" required>
						</div>
					</div>

					<div class="col-sm-5">
						<div class="form-group_oneclick">
							<input type="submit" name="oneclickbtn" class="btn btn_act btn_submit" value="Отправить">
						</div>
					</div>
				</div>
			</form>
		</div>

		<!-- order success -->
		<div id="ordersuccess" class="modal text-center">
			<div class="icon-success">
				<span class="icon icon_success">
					<svg>
						<use xlink:href="#icon_done"></use>
					</svg>
				</span>
			</div>
			<h4 class="title modal-title modal-title_min">Спасибо! Мы получили ваш заказ</h4>
			<p class="modal-text">Номер вашего заказа:
				<span id="ordernumber" class="order-number">46498798</span>
			</p>
			<div class="user-bonus">
				<span class="user-bonus-text">Ваш бонус:</span>
				<span class="user-bonus-count">+265
					<span class="user-bonus-currency">грн</span>
				</span>
			</div>
			<p class="modal-text">Мы отправили вам письмо на ваш электронный адрес с детальной информацией о заказе.</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="/" class="btn btn_default">На главную страницу</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#promocode" class="btn btn_act popup-btn">Мой баланс</a>
					</div>
				</div>
			</div>
		</div>

		<!-- how to get googlemap -->
		<div id="googlemap" class="modal modal-big">
			<h3 class="title modal-title">Мы находимся на карте</h3>
			<div class="google-map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2594.1405255210357!2d26.936219815695278!3d49.44406097934922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473206d56669263d%3A0x347411acabf6cb4e!2z0YPQuy4g0JrRg9GA0YfQsNGC0L7QstCwLCA1OCwg0KXQvNC10LvRjNC90LjRhtC60LjQuSwg0KXQvNC10LvRjNC90LjRhtC60LDRjyDQvtCx0LvQsNGB0YLRjA!5e0!3m2!1sru!2sua!4v1512762641043" frameborder="0" allowfullscreen></iframe>
			</div>
		</div>

		<!-- add to favourite -->
		<div id="addtofav" class="modal modal-add">
			<h3 class="title modal-title">Избранные</h3>
			<p class="modal-text text-center">Товар успешно добавлен в избранные!</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="javascript:void(0);" class="btn btn_default popup-close">Закрыть</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#" class="btn btn_act">К избранным</a>
					</div>
				</div>
			</div>
		</div>

		<!-- add to compare -->
		<div id="addtocompare" class="modal modal-add">
			<h3 class="title modal-title">Сравнения</h3>
			<p class="modal-text text-center">Товар успешно добавлен к сравнению!</p>
			<div class="row min">
				<div class="col-sm-6">
					<div class="modal-btn">
						<a href="javascript:void(0);" class="btn btn_default popup-close">Закрыть</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="modal-btn text-right">
						<a href="#" class="btn btn_act">К сравненным</a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- Navbar -->
	
	
			<?php if ($categories) { ?>
			<div class="container">
				<nav id="menu" class="navbar">
					<div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
						<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
					</div>
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">	
							<?php foreach ($categories as $category) { ?>
								
								<?php if ($category['children']) { ?>
									
									<li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']."__"; ?></a>
										<div class="dropdown-menu">
											<div class="dropdown-inner">		
												<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
													<ul class="list-unstyled">
														<?php foreach ($children as $child) { ?>
															<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
														<?php } ?>
													</ul>
												<?php } ?>
												
												
											</div>
										<a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
									</li>
									
									<?php } else { ?>
									<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
								<?php } ?>
								
								
								
							<?php } ?>
						</ul>
					</div>
				</nav>
			</div>
		<?php } ?>
	
	
	
	<div id="navbar" class="nav navbar">
		<div class="container">
			
				<div class="navbar-logo-wrap">
					<a href="/" class="navbar-logo">
						<picture>
							<img src="images/logo-small.svg" alt="ВЕЛОСКЛАД">
						</picture>
					</a>
				</div>
		
				<div class="nav-wrap navbar-wrap">
					<a href="#" class="nav-link nav-link_navbar link-discount link-discount_navbar">
						<span class="btn-icon">
							<span class="icon">
								<svg>
									<use xlink:href="#icon_discount"></use>
								</svg>
							</span>
						</span>
						<span class="btn-text">Скидки</span>
					</a>
					<nav class="nav-list">
						<?php if ($categories) { ?>
						<menu class="nav-items nav-items_navbar">
							
							<?php foreach ($categories as $category) { ?>
							
							<li class="nav-item">
								<a href="<?php echo $category['href']; ?>" class="nav-link">
								<span><?php echo $category['name']; ?></span>
								</a>
								
								<?php if ($category['children']) { ?>
								<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
								<ul class="nav-items_sub">
									
									<?php foreach ($children as $child) { ?>
									<li class="nav-item_sub"><a href="<?php echo $child['href']; ?>" class="nav-link_sub"><?php echo $child['name']; ?></a></li>						
									<?php } ?>
								
								</ul>
								<?php } ?>
							    
								<?php } ?>
							
							</li>

							<?php } ?>
						</menu>
						<?php } ?>
					</nav>
				</div>

				<div class="navbar-user-wrap">
					<ul class="navbar-user">
						<li class="navbar-user_item">
							<a href="#" class="navbar-user_link">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_favourite"></use>
									</svg>
								</span>
								<span class="add-count add-count_favourite" data-value="19"></span>
							</a>
						</li>
						<li class="navbar-user_item">
							<a href="#" class="navbar-user_link">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_compare"></use>
									</svg>
								</span>
								<span class="add-count add-count_compare" data-value="7"></span>
								<span class="count">7</span>
							</a>
						</li>
						<li class="navbar-user_item">
							<a href="#addtocart" class="navbar-user_link popup-btn">
								<span class="icon">
									<svg>
										<use xlink:href="#icon_cart"></use>
									</svg>
								</span>
								<span class="add-count add-count_cart" data-value="3"></span>
							</a>
						</li>
					</ul>
				</div>
				
		</div>
	</div>

<script>
    $('.ajax-form').on('submit',function(){
        event.preventDefault();
        var msg = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: 'index.php?route=information/contact/sendMail',
            data: msg,
            success: function(data){
                window.location.replace('index.php?route=information/contact/success');
            },
            error: function(xhr){
                alert('An error occurred.' + xhr.response);
            }
        });
    })
</script>

	
