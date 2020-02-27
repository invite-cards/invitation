<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
		<meta charset="UTF-8">
		<title><?php echo $title ?></title>
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/style.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/responsive.css">
		<link rel="shortcut icon" href="favicon/favicon.png">
	</head>
	<body class="header_sticky grid">
		<div class="boxed style2">

			<div class="overlay"></div>

			<!-- Preloader -->
			<!-- <div class="preloader">
				<div class="clear-loading loading-effect-2">
					<span></span>
				</div>
			</div> --><!-- /.preloader -->

			<?php $this->load->view('includes/header'); ?>

			

			<section class="flat-row flat-slider style1">
				<div class="container-fluid">
					<div class="row">
						<div class="grid-left">
						</div><!-- /.grid-left -->
						<div class="grid-right">
							<div class="slider owl-carousel-18">
								<?php if (!empty($banner)) {
								 	foreach ($banner as $key => $value) { ?>
								 		<a href="<?php echo $value->link; ?>" target="_blank">
								 		<div class="slider-item style10" style="background-image: url(<?php echo base_url().$value->image; ?>);">
											<div class="item-text">
												<div class="content-item"> </div>
											</div>
										</div>
										</a>
								<?php } }else{
									echo '<div class="slider-item style10">
									<div class="item-text">
										<div class="content-item"> </div>
										</div>
									</div>';
								} ?> 
								<!-- /.slider-item style10 -->
								
							</div><!-- /.slides -->
						</div><!-- /.grid-right -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section><!-- /.flat-slider -->


			<div class="divider20"></div>

			<section class="flat-imagebox style1">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="flat-row-title">
								<h3>Trending</h3>
							</div>
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
					<div class="row">
						<div class="owl-carousel-19">
							<?php if (!empty($product)) {
								foreach ($product as $key => $value) { 
									if ($value->pr_type == '1') {
								?>
									<div class="owl-carousel-item">
								<div class="product-box style1 v1">
									<div class="imagebox style1">
										<div class="box-image">
											<a href="<?php echo base_url('product/').$value->pr_id ?>" title="">
												<img src="<?php echo base_url().$value->featured_image; ?>" alt="">
											</a>
										</div><!-- /.box-image -->
										<div class="box-content">
											<div class="cat-name">
												<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->title))?$value->title:''; ?></a>
											</div>
											<div class="product-name">
												<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->name))?$value->name:''; ?><br /><?php echo (!empty($value->sku))?$value->sku:''; ?></a>
											</div>
											<div class="price">
												<span class="regular"><?php echo (!empty($value->mrp))?$value->mrp:''; ?></span>
												<span class="sale"><?php echo (!empty($value->selling_price))?$value->selling_price:''; ?></span>
											</div>
										</div><!-- /.box-content -->
									</div>
								</div>
								<div class="divider60"></div>
							</div>
							<?php }	} } ?> 
							
						</div><!-- /.col-md-12 owl-carousel-10 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section><!-- /.flat-imagebox style1 -->

			<section class="flat-imagebox style7">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="flat-row-title">
								<h3>New Designs</h3>
							</div>
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
					<div class="row">
						<div class="wrap-most-view">
							<div class="owl-carousel-6">
								<?php if (!empty($product)) {
								foreach ($product as $key => $value) { 
									if ($value->pr_type == '2') {
								?>
								<div class="imagebox style4">
									<div class="box-image">
										<a href="<?php echo base_url('product/').$value->pr_id ?>" title="">
											<img src="<?php echo base_url().$value->featured_image; ?>" alt="">
										</a>
									</div><!-- /.box-image -->
									<div class="box-content">
										<div class="cat-name">
											<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->title))?$value->title:''; ?></a>
										</div>
										<div class="product-name">
											<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->name))?$value->name:''; ?><br /><?php echo (!empty($value->sku))?$value->sku:''; ?></a>
										</div>
										<div class="price">
											<span class="sale"><?php echo (!empty($value->mrp))?$value->mrp:''; ?></span>
											<span class="regular"><?php echo (!empty($value->selling_price))?$value->selling_price:''; ?></span>
										</div>
									</div><!-- /.box-content -->
								</div><!-- /.imagebox style4 -->
							<?php }}}?>
							
							</div><!-- /.owl-carousel-3 -->
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section><!-- /.flat-imagebox style4 -->
			<section class="flat-imagebox style7">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="flat-row-title">
								<h3>Most Selling</h3>
							</div>
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
					<div class="row">
						<div class="wrap-most-view">
							<div class="owl-carousel-6">
								<?php if (!empty($product)) {
								foreach ($product as $key => $value) { 
									if ($value->pr_type == '3') {
								?>
								<div class="imagebox style4">
									<div class="box-image">
										<a href="<?php echo base_url('product/').$value->pr_id ?>" title="">
											<img src="<?php echo base_url().$value->featured_image; ?>" alt="">
										</a>
									</div><!-- /.box-image -->
									<div class="box-content">
										<div class="cat-name">
											<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->title))?$value->title:''; ?></a>
										</div>
										<div class="product-name">
											<a href="<?php echo base_url('product/').$value->pr_id ?>" title=""><?php echo (!empty($value->name))?$value->name:''; ?><br /><?php echo (!empty($value->sku))?$value->sku:''; ?></a>
										</div>
										<div class="price">
											<span class="sale"><?php echo (!empty($value->mrp))?$value->mrp:''; ?></span>
											<span class="regular"><?php echo (!empty($value->selling_price))?$value->selling_price:''; ?></span>
										</div>
									</div><!-- /.box-content -->
								</div><!-- /.imagebox style4 -->
								<?php }}}?>
							
							</div><!-- /.owl-carousel-3 -->
						</div><!-- /.col-md-12 -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section><!-- /.flat-imagebox style4 -->



			<?php $this->load->view('includes/footer'); ?>

			

		</div><!-- /.boxed -->

		<!-- <?php echo base_url()?>assets/javascript -->
		<script  src="<?php echo base_url()?>assets/javascript/jquery.min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/tether.min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/bootstrap.min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/waypoints.min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/easing.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/jquery.zoom.min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/jquery.flexslider-min.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/owl.carousel.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/smoothscroll.js"></script>
		<script  src="<?php echo base_url()?>assets/javascript/jquery.mCustomScrollbar.js"></script>
		<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtRmXKclfDp20TvfQnpgXSDPjut14x5wk&amp;region=GB"></script>
	   	<script src="<?php echo base_url()?>assets/javascript/gmap3.min.js"></script>
	   	<script  src="<?php echo base_url()?>assets/javascript/waves.min.js"></script>
		<script src="<?php echo base_url()?>assets/javascript/main.js"></script>
		<?php $this->load->view('includes/searchq'); ?>
</body>
</html>	