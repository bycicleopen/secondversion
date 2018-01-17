
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>

<!-- Slider -->
	<section class="slider">
		<div class="container">
			<div class="slider-wrap">
				<!-- paginator -->
				<div class="slider-points">
					<ul>
						<li>
							<a href="#"></a></li>
						<li>
							<a href="#"></a></li>
						<li>
							<a href="#" class="is-active"></a></li>
						<li>
							<a href="#"></a></li>
					</ul>
				</div>
				<div class="slider-arrows hidden-xs hidden-sm">
					<button class="paginator-item btn-slider btn-slider_left">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_arwleft"></use>
							</svg>
						</span>
					</button>
					<button class="paginator-item btn-slider btn-slider_right">
						<span class="icon">
							<svg>
								<use xlink:href="#icon_arwright"></use>
							</svg>
						</span>
					</button>
				</div>
				<!-- end -->
				<!-- slider item -->
				<div class="slider-item">
					<a href="#" class="slider-link"></a>
					<div class="slider-item-content">
						<div class="slider-text">
							<span class="slider-title">Горный велосипед</span>
							<span class="slider-title_sub">Kinetic Sniper Disk 24"</span>
							<p class="slider-descr">У подросткового велосипеда трансмиссия на 18 передач, амортизирующая вилка, которая поможет сделать езду намного более комфортной, надёжные и простых дисковые тормоза!</p>
							<div class="slider-price-wrap">
								<span class="slider-price">4514 грн</span>
								<span class="slider-price_old">5290 грн</span>
							</div>
							<a href="#" class="btn btn_act slider-btn_act">Перейти к товару</a>
						</div>
						<img src="images/slider/slider-bike.png" alt="Kinetic Sniper Disk" class="slider-image hidden-xs hidden-sm">
						<span class="slider-price-bonus hidden-xs hidden-sm">+1350
							<span class="slider-price-bonus_currency">грн*</span>
						</span>
						<span class="slider-price-bonus_descr hidden-xs hidden-sm">* Внимание, БОНУС действительный до 14.09</span>
					</div>
				</div>
			</div>
		</div>
	</section>




<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>