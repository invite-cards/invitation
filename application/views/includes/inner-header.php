<section id="header" class="header">
            <div class="header-middle">
                <div class="container">
                    <div class="row">
                            <div class="grid-left">
                                <div id="logo" class="logo">
                                    <a href="index.html" title="">
                                        <img src="<?php echo base_url()?>assets/images/logos/logo.png" alt="">
                                    </a>
                                </div><!-- /#logo -->
                                <div class="btn-menu">
                                    <span></span>
                                </div><!-- //mobile menu button -->
                            </div><!-- /.grid-left -->
                            <div class="grid-right">
                                <div class="nav-wrap">
                                    <div id="mainnav" class="mainnav style2">
                                        <ul class="menu">
                                        <li class="column-1">
                                            <a href="index.html" title="">Home</a>
                                        </li>
                                        <li class="column-1">
                                            <a href="index.html" title="">Login</a>
                                        </li>
                                        <li class="column-1">
                                            <a href="index.html" title="">Register</a>
                                        </li>
                                    </ul><!-- /.menu -->
                                    </div><!-- /.mainnav -->
                                </div><!-- /.nav-wrap -->
                            </div><!-- /.grid-right -->
                        </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.header-middle -->
            <div class="header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 ">
                            <div id="mega-menu">
                                <div class="btn-mega"><span></span>ALL CATEGORIES</div>
                                <ul class="menu">
                                        <?php if(!empty(category())){
                                            foreach (category() as $key => $value) { ?>
                                            <li>
                                                <a href="<?php echo base_url().'search?q='.$value->title.'&un='.$value->uniq ?>" title="" class="dropdown">
                                                    <span class="menu-title">
                                                        <?php echo $value->title; ?>
                                                    </span>
                                                </a>
                                                <div class="drop-menu">
                                                    <div class="one-third">
                                                        <div class="cat-title">
                                                            <?php echo $value->title; ?>
                                                        </div>
                                                        <ul>
                                                            <?php $sub = sub_category($value->id);
                                                            if (!empty($sub)) {
                                                                foreach ($sub as $subs => $subsc) { ?>
                                                                <li>
                                                                    <a href="<?php echo base_url().'search?q='.$value->title.'&un='.$value->uniq.'&sub='.$subsc->title ?> " title=""><?php echo $subsc->title; ?></a>
                                                                </li>
                                                            <?php   } } ?>
                                                            
                                                        </ul>
                                                </div>
                                                </div><!-- /.drop-menu -->
                                            </li>
                                        <?php } } ?>
                                    </ul>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="top-search style1">
                                    <form action="#" method="get" class="form-search" accept-charset="utf-8">
                                        <div class="box-search">
                                            <input type="text" name="search" placeholder="Search what you looking for ?">
                                            <span class="btn-search">
                                                <button type="submit"><img src="<?php echo base_url()?>assets/images/icons/search-2.png" alt=""></button>
                                            </span>
                                            <div class="search-suggestions">
                                                <div class="box-suggestions">
                                                    <div class="title">
                                                        Search Suggestions
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/s05.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Razer RZ02-01071500-R3M1</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $50.00
                                                                    </span>
                                                                    <span class="regular">
                                                                        $2,999.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/s06.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Notebook Black Spire V Nitro VN7-591G</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $24.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/14.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Apple iPad Mini G2356</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $90.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/02.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Razer RZ02-01071500-R3M1</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $50.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/l01.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Apple iPad Mini G2356</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $24.00
                                                                    </span>
                                                                    <span class="regular">
                                                                        $2,999.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="image">
                                                                <img src="<?php echo base_url()?>assets/images/product/other/s08.jpg" alt="">
                                                            </div>
                                                            <div class="info-product">
                                                                <div class="name">
                                                                    <a href="#" title="">Beats Snarkitecture Headphones</a>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="sale">
                                                                        $90.00
                                                                    </span>
                                                                    <span class="regular">
                                                                        $2,999.00
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div><!-- /.box-suggestions -->
                                            </div><!-- /.search-suggestions -->
                                        </div><!-- /.box-search -->
                                    </form><!-- /.form-search -->
                            </div><!-- /.top-search -->
                                <span class="show-search">
                                    <button></button>
                                </span>
                        </div>

                        <div class="col-md-2">

                                <div class="box-cart style1">
                                    <div class="inner-box">
                                        <ul class="menu-compare-wishlist">
                                            <li class="wishlist">
                                                <a href="#" title="">
                                                    <img src="<?php echo base_url()?>assets/images/icons/wishlist-2.png" alt="">
                                                </a>
                                            </li>
                                        </ul><!-- /.menu-compare-wishlist -->
                                    </div><!-- /.inner-box -->
                                    <div class="inner-box">
                                        <a href="#" title="">
                                            <div class="icon-cart">
                                                <img src="<?php echo base_url()?>assets/images/icons/add-cart.png" alt="">
                                                <span>4</span>
                                            </div>
                                        </a>
                                    </div><!-- /.inner-box -->
                                </div><!-- /.box-cart -->
                            </div>

                       
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.header-bottom -->
        </section><!-- /#header -->