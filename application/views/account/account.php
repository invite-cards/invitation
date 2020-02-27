<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>Invitation</title>
    <meta name="author" content="CreativeLayers">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/stylesheets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/stylesheets/style.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/stylesheets/responsive.css">
    <link rel="icon" type="image/png" sizes="60x60" href="<?php echo base_url() ?>assets/favicon/favicon.png">
    <link href="<?php echo base_url()?>assets/stylesheets/jquery.alertable.css" rel="stylesheet">

</head>

<body class="header_sticky background">
    <div class="boxed">
        <?php  $this->load->view('includes/inner-header');?>


        <main id="account-settings">
            <div class="container">
                <div class="row">
                        <div class="col-lg-6 col-md-8" style="margin: auto;">
                            <div class="secs-top">
                                <div class="form-register">
                                    <div class="col-md-12 col-lg-12">
                                    <div class="widget-title mb-30">
                                            <h3>My Profile<span></span></h3>
                                        </div>
                                        <form action="<?php echo base_url('account') ?>" method="post" id="accountsettings" accept-charset="utf-8">
                                            <div class="form-box">
                                                <label for="name">Full Name</label>
                                                <input type="text" value="<?php echo $profile['name'] ?>" id="name" name="name">
                                            </div><!-- /.form-box -->
                                            <div class="form-box">
                                                <label for="email">Email address <span class="error">*</span> </label>
                                                <input type="text" value="<?php echo $profile['email'] ?>" readonly id="email" name="email">
                                            </div><!-- /.form-box -->
                                            <div class="form-box">
                                                <label for="phone">Phone number <span class="error">*</span></label>
                                                <input type="text" value="<?php echo $profile['phone'] ?>" id="phone" name="phone">
                                            </div><!-- /.form-box -->
                                            <div class="form-box">
                                                <a href="<?php echo base_url('change-psw') ?>">Change password</a>
                                            </div>
                                            <div class="form-box">
                                                <button type="submit" class="register">Update Profile</button>
                                            </div><!-- /.form-box -->
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div><!-- /.row -->
            </div><!-- /.container -->
        </main><!-- /#shop <-->
        <?php  $this->load->view('includes/footer');?>

    </div><!-- /.boxed -->

    <!-- Javascript -->
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
        <script src="<?php echo base_url()?>assets/javascript/jquer-validation.js"></script>
        <script src="<?php echo base_url()?>assets/javascript/jquery.alertable.js"></script>

        <?php $this->load->view('includes/message'); ?>

    <script>
        $(document).ready(function() {
            $("#accountsettings").validate({
                rules: {
                    phone: {
                        required: true,
                        
                    },

                    email: {
                        required: true,
                        email: true
                    },

                },
                messages: {
                    phone:  "Please provide a Phone number",
                    email: "Please enter a valid email address",
                }
            });
        });
    </script>
    <?php $this->load->view('includes/searchq'); ?>


</body>

</html>