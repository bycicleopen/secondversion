<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  
        <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>."бк"</button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
  
  
  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
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
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
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
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
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
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
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
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
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
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
      </div>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-xs-8 col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-xs-6 col-md-4'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-6 col-sm-3'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($j = 1; $j <= 5; $j++) { ?>
                <?php if ($product['rating'] < $j) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && (($i+1) % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && (($i+1) % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif (($i+1) % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>



      <!-- Item Content -->
      <div class="page-content">
        <div class="container">
          <main class="content">
            <div class="item-title">
              <h1 class="title main-title">Optimabikes Motion DD 29" 2017</h1>
              <div class="item-addition">
                <div class="item-addition-article">Артикул:
                  <span class="item-addition-article-number">53175667</span>
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
                        <div class="item-photo">
                          <img src="images/item/1-big.jpg" alt="green" class="item-photo-image">
                        </div>
                        <!-- item photo mini -->
                        <ul class="popup-gallery item-photo-items">
                          <li class="item-photo-item">
                            <a href="images/item/1-big.jpg" class="item-photo-link_min">
                              <img src="images/item/1-min.jpg" alt="green" class="item-photo-image_min">
                            </a>
                          </li>
                          <li class="item-photo-item">
                            <a href="images/item/2-big.jpg" class="item-photo-link_min">
                              <img src="images/item/2-min.jpg" alt="blue" class="item-photo-image_min">
                            </a>
                          </li>
                          <li class="item-photo-item">
                            <a href="images/item/3-big.jpg" class="item-photo-link_min">
                              <img src="images/item/3-min.jpg" alt="orange" class="item-photo-image_min">
                            </a>
                          </li>
                          <li class="item-photo-item">
                            <a href="images/item/4-big.jpg" class="item-photo-link_min">
                              <img src="images/item/4-min.jpg" alt="frame" class="item-photo-image_min">
                            </a>
                          </li>
                          <li class="item-photo-item">
                            <a href="images/item/5-big.jpg" class="item-photo-link_min">
                              <img src="images/item/5-min.jpg" alt="breaks" class="item-photo-image_min">
                            </a>
                          </li>
                          <li class="item-photo-item">
                            <a href="images/item/6-big.jpg" class="item-photo-link_min">
                              <img src="images/item/6-min.jpg" alt="saddle" class="item-photo-image_min">
                            </a>
                          </li>
                        </ul>
                      </div>
                      <!-- item information -->
                      <div class="col-lg-5 col-md-6 col-sm-6">
                        <div class="item-info">
                          <!-- size and color -->
                          <div class="item-info-type">
                            <div class="row">
                              <!-- size -->
                              <div class="col-md-6 col-sm-6">
                                <span class="info-type-label">Размер рамы:</span>
                                <!-- select -->
                                <div class="select-wrap select-size">
                                  <select id="item-size" name="size" class="input input_select">
                                    <option value="150">150-165 (15-16.5)</option>
                                    <option value="165">165-180 (17-18.5)</option>
                                    <option value="175">175-190 (19-20.5)</option>
                                  </select>
                                </div>
                              </div>
                              <!-- color -->
                              <div class="col-md-6 col-sm-6">
                                <span class="info-type-label">Цвет:</span>
														<span class="info-type-color">
															<span style="background-color: #06f64c"></span>
															<span style="background-color: #019cf8"></span>
															<span style="background-color: #fc4b19"></span>
														</span>
                              </div>
                            </div>
                          </div>
                          <!-- price -->
                          <div class="item-info-price">
                            <div class="row">
                              <div class="col-md-6 col-sm-6">
                                <!-- price bonus -->
                                <div class="info-price-bonus-wrap">
															<span class="info-price-bonus-sum">+263<span class="info-price-bonus-currancy">грн</span>
															</span>
                                  <span class="info-price-bonus-descr">бонус до 14.09.2017</span>
                                </div>
                              </div>
                              <div class="col-md-6 col-sm-6">
                                <!-- item price -->
                                <div class="info-price-wrap">
                                  <span class="info-price">5259 грн</span>
                                  <span class="info-price-old">6573 грн</span>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- purchase form-->
				  
  <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">

				
			 <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
		 </div>
 </div>		 
						  
						  
                          <div class="item-info-purchase">
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

                                  <input type="text" class="input input_count" value="1">

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
                                <a href="#addtocart" class="btn btn_act btn_purchase popup-btn">
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
                          </div>
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



        </div>
      </div>











      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>




















































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
