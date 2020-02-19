<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"><!--<![endif]-->

<!-- Mirrored from grandetest.com/theme/techno-html/single-product-v4.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Feb 2020 09:03:19 GMT -->
<head>
    <!-- Basic Page Needs -->
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title><?php echo $title ?></title>

    <meta name="author" content="CreativeLayers">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Boostrap style -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/bootstrap.min.css">

    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/style.css">

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/stylesheets/responsive.css">

    <link rel="shortcut icon" href="favicon/favicon.png">
     
</head>
<body class="header_sticky">
    <div class="boxed">

        <div class="overlay"></div>

        <!-- Preloader -->
        <div class="preloader">
            <div class="clear-loading loading-effect-2">
                <span></span>
            </div>
        </div><!-- /.preloader -->



        <?php $this->load->view('includes/inner-header'); ?>

        

        <section class="flat-product-detail">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<?php echo base_url().$product->featured_image; ?>">
                                  <a href='#' id="zoom" class='zoom'><img src="<?php echo base_url().$product->featured_image; ?>" alt='' width='400' height='300' /></a>
                                </li>
                                <?php if (!empty($product->images)) {
                                    foreach ($product->images as $key => $value) { ?>
                                    <li data-thumb="<?php echo base_url().$value->image ?>">
                                      <a href='#' id="zoom1" class='zoom'><img src="<?php echo base_url().$value->image ?>" alt='' width='400' height='300' /></a>
                                    </li>
                                <?php    } } ?> 
                                
                            </ul><!-- /.slides -->
                        </div><!-- /.flexslider -->
                    </div><!-- /.col-md-6 -->
                    <div class="col-md-6">
                        <div class="product-detail style4">
                            <div class="header-detail">
                                <h4 class="name"><?php echo (!empty($product->name))?$product->name:'';  ?></h4>
                                <div class="category">
                                   <?php echo (!empty($product->category))?$product->category:'';  ?>
                                </div>
                                <div class="reviewed">
                                    <div class="status-product">
                                        Availablity <span> <?php echo (!empty($product->is_stock) && $product->is_stock=='1')?'Yes':'No';  ?></span>
                                    </div>
                                </div><!-- /.reviewed -->
                            </div><!-- /.header-detail -->
                            <div class="content-detail">
                                <div class="price">
                                    <div class="regular">
                                        <?php echo (!empty($product->mrp))?'&#8377;'.$product->mrp:'';  ?>
                                    </div>
                                    <div class="sale">
                                        <?php echo (!empty($product->selling_price))?'&#8377;'.$product->selling_price:'';  ?>
                                    </div>
                                </div>
                                <div class="info-text">
                                    <?php echo (!empty($product->description))?$product->description:'';  ?>
                                </div>
                                <div class="product-id">
                                    SKU: <span class="id"><?php echo (!empty($product->sku))?$product->sku:'';  ?></span>
                                </div>
                            </div><!-- /.content-detail -->
                            <div class="footer-detail">
                                <div class="quanlity-box">
                                    <div class="quanlity">
                                        <span class="btn-down"></span>
                                        <input type="number" name="number" value="" min="1" max="100" placeholder="Quanlity">
                                        <span class="btn-up"></span>
                                    </div>
                                </div><!-- /.quanlity-box -->
                                <div class="box-cart style2">
                                    <div class="btn-add-cart">
                                        <a href="#" title=""><img src="<?php echo base_url()?>assets/images/icons/add-cart.png" alt="">Add to Cart</a>
                                    </div>
                                    <div class="compare-wishlist">
                                        <a href="compare.html" class="wishlist" title=""><img src="<?php echo base_url()?>assets/images/icons/wishlist.png" alt="">Wishlist</a>
                                    </div>
                                </div><!-- /.box-cart style2 -->
                              
                            </div><!-- /.footer-detail -->
                        </div><!-- /.product-detail style4 -->
                    </div><!-- /.col-md-6 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.flat-product-detail -->

    <?php if (!empty($product->images)) { ?>
        <section class="flat-product-content">
            <ul class="product-detail-bar">
                <li class="active">Other Features</li>
            </ul><!-- /.product-detail-bar -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="tecnical-specs">
                            <table>
                                <tbody>
                                    <?php if (!empty($product->images)) {
                                    echo '<tr>
                                            <td>Weight</td>
                                            <td>'.$product->weight.'</td>
                                         </tr>';
                                     }?>

                                     <?php if (!empty($product->dimensions)) {
                                    echo '<tr>
                                            <td>Dimensions</td>
                                            <td>'.$product->dimensions.'</td>
                                         </tr>';
                                     }?>

                                     <?php if (!empty($product->no_of_insert)) {
                                    echo '<tr>
                                            <td>No of Insert</td>
                                            <td>'.$product->no_of_insert.'</td>
                                         </tr>';
                                     }?>

                                     <?php if (!empty($product->material)) {
                                    echo '<tr>
                                            <td>Material</td>
                                            <td>'.$product->material.'</td>
                                         </tr>';
                                     }?>

                                     <?php if (!empty($product->type)) {
                                    echo '<tr>
                                            <td>Type</td>
                                            <td>'.$product->type.'</td>
                                         </tr>';
                                     }?>

                                     <?php if (!empty($product->ceremony)) {
                                    echo '<tr>
                                            <td>Ceremony</td>
                                            <td>'.$product->ceremony.'</td>
                                         </tr>';
                                     }?>

                                      <?php if (!empty($product->orientation)) {
                                    echo '<tr>
                                            <td>Orientation</td>
                                            <td>'.$product->orientation.'</td>
                                         </tr>';
                                     }?>

                                      <?php if (!empty($product->print_option)) {
                                    echo '<tr>
                                            <td>Print Option</td>
                                            <td>'.$product->print_option.'</td>
                                         </tr>';
                                     }?>

                                       <?php if (!empty($product->size)) {
                                    echo '<tr>
                                            <td>Size</td>
                                            <td>'.$product->size.'</td>
                                         </tr>';
                                     }?>

                                       <?php if (!empty($product->gsm)) {
                                    echo '<tr>
                                            <td>Gsm</td>
                                            <td>'.$product->gsm.'</td>
                                         </tr>';
                                     }?>

                                       <?php if (!empty($product->color)) {
                                    echo '<tr>
                                            <td>Color</td>
                                            <td>'.$product->color.'</td>
                                         </tr>';
                                     }?>

                                        <?php if (!empty($product->theme)) {
                                    echo '<tr>
                                            <td>Theme</td>
                                            <td>'.$product->theme.'</td>
                                         </tr>';
                                     }?>
                                </tbody>
                            </table>
                        </div><!-- /.tecnical-specs -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /.flat-product-content -->
    <?php } ?>

        

        <?php $this->load->view('includes/footer'); ?>

    </div><!-- /.boxed -->

        <!-- Javascript -->
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/tether.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/bootstrap.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/waypoints.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.circlechart.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/easing.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.zoom.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/owl.carousel.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/smoothscroll.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery-ui.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.mCustomScrollbar.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtRmXKclfDp20TvfQnpgXSDPjut14x5wk&amp;region=GB"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/gmap3.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/waves.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/jquery.countdown.js"></script>

        <script type="text/javascript" src="<?php echo base_url()?>assets/javascript/main.js"></script>

</body> 

<!-- Mirrored from grandetest.com/theme/techno-html/single-product-v4.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Feb 2020 09:03:19 GMT -->
</html>