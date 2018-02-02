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





	<!-- About Us -->
	<div class="page-content">
		<div class="container">
			
				<div class="title-wrap">
					<h1 class="title main-title"><?php echo $heading_title; ?></h1>
				</div>
				<!-- contact information -->
				<div class="contact-info-wrap">
					<div class="row">
						<div class="col-md-5">
							<h6 class="title contact-info-title"><?php echo $text_location; ?></h6>
							<ul class="contact-info-items">
								<li class="contact-info-item contact-info-item_phone">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_sellphone"></use>
											</svg>
										</span>
									</span>
									<span class="text">+38(068) 500-10-02</span>
								</li>
								<li class="contact-info-item">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_marker"></use>
											</svg>
										</span>
									</span>
									<span class="text"><?php echo $address; ?>Хмельницкий ул.Курчатова, 58</span>
								</li>
								<li class="contact-info-item contact-info-item_time">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_time"></use>
											</svg>
										</span>
									</span>
									<span class="text">
										<span class="contact-info-days">пн - вс 9:00 - 18:00</span>
										<span class="contact-info-hours">Без выходных</span>
									</span>
								</li>
								<li class="contact-info-item">
									<span class="btn-icon">
										<span class="icon">
											<svg>
												<use xlink:href="#icon_email"></use>
											</svg>
										</span>
									</span>
									<a href="mailto:velosklad@gmail.com" class="link contact-info-email">velosklad@gmail.com</a>
								</li>
							</ul>
						</div>
						<div class="col-md-7">
						
<h6 class="title contact-info-title"><?php echo $text_contact; ?></h6>						
<div class="contact-info-form">	

	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="ajax-form">
        <div class="form-row">
	    <div class="row min">
		<div class="col-sm-6">
          <div class="form-group required">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="input input_order" placeholder=" <?php echo $entry_name."*"; ?>" required/>
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?> 
          </div>
		 </div>
		  <div class="col-sm-6">
          <div class="form-group required">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="input input_order" placeholder="<?php echo $entry_email."*"; ?>" required />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
          </div>
		   </div>
		  
		  
		 </div>
		 </div>
		  
		  
		 <div class="form-row">
		<div class="row min">
          <div class="form-group required">
    
           <div class="col-sm-12">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="input input_area input_textarea" placeholder="<?php echo $entry_enquiry."*"; ?>" ><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
		   </div>
           
          </div>
		 </div>
        </div>  
		  
		  
		  
          <?php echo $captcha; ?>
       
      
        
		  
		  <!-- send button -->
									<div class="form-send">
		  								<button type="submit" class="btn btn_act btn_form"  value="<?php echo $button_submit; ?>">
											<span class="btn-text"><?php echo $button_submit; ?></span>
										</button>
										<span class="modal-text_small">* - поля, обязательные для заполнения</span>
									 </div>
          
       
      </form>
	  
 </div>
 </div>	
 </div>
</div>
	        <?php echo $content_bottom; ?>
            <?php echo $column_right; ?>

				<!-- google map -->
				<div class="contacts-map-wrap">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2594.1405255210357!2d26.936219815695278!3d49.44406097934922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473206d56669263d%3A0x347411acabf6cb4e!2z0YPQuy4g0JrRg9GA0YfQsNGC0L7QstCwLCA1OCwg0KXQvNC10LvRjNC90LjRhtC60LjQuSwg0KXQvNC10LvRjNC90LjRhtC60LDRjyDQvtCx0LvQsNGB0YLRjA!5e0!3m2!1sru!2sua!4v1512762641043" frameborder="0" allowfullscreen></iframe>
		</div>	
	</div>
</div>
	







<?php echo $footer; ?>
