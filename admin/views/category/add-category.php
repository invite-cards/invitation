<!DOCTYPE html>
<html>
   <head>
      <title></title>
      <meta charset="UTF-8">
      <meta name="description" content="Free Web tutorials">
      <meta name="keywords" content="HTML,CSS,XML,JavaScript">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="<?php echo base_url()?>assets/fonts/css/all.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/css/materialize.min.css">
      <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/css/style.css">
      <!-- bar -->
      
   </head>
   <body>
      <!-- headder -->
      <div id="header-include">
           <?php $this->load->view('include/header.php'); ?>
         </div>
      <!-- end headder -->
      <!-- first layout -->
        <section class="sec-top">
            <div class="container-wrap">
                <div class="col l12 m12 s12">
                    <div class="row">
      <div id="sidemenu-include">
                <?php $this->load->view('include/menu.php'); ?>
              </div>

                        <div class="col m12 s12 l9">
                            <p class="h5-para black-text ">Add Category</p>

                            <div class="card">
                                <div class="card-content">
                                    <div class="form-container">
                                        <form action="<?php echo base_url() ?>category/insert" method="post" style="overflow-y: auto;overflow-x: hidden;" id="category-form" enctype="multipart/form-data">
                                        
                                          <div class="row m0">
                                                <div class="input-field col s12 l6">
                                                  <input type="text" id="category" name="category" class="validate" required>
                                                  <label for="category">category <span class="red-text">*</span></label>
                                                  <p><span class="error"><?php echo form_error('category'); ?></span></p>
                                                </div>
                                            </div>
                                              <div class="col s12">
                                              <?php 
                                                   echo ($this->session->flashdata('formerror'))? '<span class="red-text">'.$this->session->flashdata('formerror').'</span>' : '' 
                                                   ?>
                                              <?php ?>
                                              </div>

                                              <input type="hidden" name="category_id" value="<?php echo random_string('alnum',10) ?>">
                                              

                                            
                                            <div class="col s12 mtb20">
                                                <button class="btn waves-effect waves-light green darken-4 hoverable btn-large" type="submit">Submit
                                                    <i class="fas fa-paper-plane right"></i>
                                                </button>
                                                <br>
                                            </div>                                              
                                        </form>
                                          </div>
                                    </div>
                                </div>
                            </div><!-- cad end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <script type="text/javascript" src="<?php echo base_url()?>assets/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/js/materialize.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url()?>assets/js/script.js"></script>
        <script src="<?php echo base_url() ?>assets/js/jquery.validate.min.js"></script>

        <script>
  <?php $this->load->view('include/message.php'); ?>

    $(document).ready(function() {
        $("#category-form").validate({
            rules: {
                category: {
                    required: true,
                },
                image: {
                    required: true,
                },
                icon: {
                    required: true,
                },
                banner_image:{
                    required: true,
                },

            },
            messages: {
                
                category: "Please enter a category",
                image: "Please add a image",
                icon: "Please add a icon",
                banner_image: "Please add a Banner Image",
            }
        });
    });
    </script>
        
    </body>
</html>