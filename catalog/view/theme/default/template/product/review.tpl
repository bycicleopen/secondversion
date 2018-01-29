<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
												<!-- coment item -->
												<div class="tab-coments-item">
													<div class="coments-item-title">
														<span class="coments-item-title-name"><?php echo $review['author']; ?></span>
														<div class="coments-item-info">
															<span class="coments-item-date"><?php echo $review['date_added']; ?></span>
															<div class="coments-item-rating">
																<ul class="rating">
																
																<?php for ($i = 1; $i <= $review['rating']; $i++) { ?>
																<li class="rating-list">
																		<span class="icon icon_rating icon_rating-fill">
																			<svg>
																				<use xlink:href="#icon_star"></use>
																			</svg>
																		</span>
																	</li>
																	
																<?php } ?>
													
																	
																</ul>
															</div>
														</div>
													</div>
													<p class="text coments-item-text"><?php echo $review['text']; ?></p>
												</div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>										