<!-- Slider Area -->
<section class="hero-slider">
    <!-- Single Slider -->
    <?php if (isset($slider)) : ?>
        <div class="single-slider">
            <?php foreach ($slider as $value) : ?>
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-9 offset-lg-3 col-12">
                            <div class="text-inner">
                                <div class="row">
                                    <div class="col-lg-7 col-12">
                                        <div class="hero-text">
                                            <h1><?php echo $value['heading'] ?></h1>
                                            <p><?php echo $value['details'] ?>/p>
                                                <div class="button">
                                                    <a href="<?php echo base_url($value['buttonUrl']); ?>" class="btn">Shop Now!</a>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else : ?>
        <div class="single-slider">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-lg-9 offset-lg-3 col-12">
                        <div class="text-inner">
                            <div class="row">
                                <div class="col-lg-7 col-12">
                                    <div class="hero-text">
                                        <h1><span>UP TO 50% OFF </span>Shirt For Man</h1>
                                        <p>Maboriosam in a nesciung eget magnae <br> dapibus disting tloctio in the find it pereri <br> odiy maboriosm.</p>
                                        <div class="button">
                                            <a href="#" class="btn">Shop Now!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
</section>
<!--/ End Slider Area -->


<!-- Start Midium Banner  -->
<section class="midium-banner p-t-65">
    <div class="container">
        <div class="row">
            <!-- Single Banner  -->
            <div class="col-lg-6 col-md-6 col-12">
                <div class="single-banner">
                    <img src="https://via.placeholder.com/600x370" alt="#">
                    <div class="content">
                        <p>Man's Collectons</p>
                        <h3>Man's items <br>Up to<span> 50%</span></h3>
                        <a href="#">Shop Now</a>
                    </div>
                </div>
            </div>
            <!-- /End Single Banner  -->
            <!-- Single Banner  -->
            <div class="col-lg-6 col-md-6 col-12">
                <div class="single-banner">
                    <img src="https://via.placeholder.com/600x370" alt="#">
                    <div class="content">
                        <p>shoes women</p>
                        <h3>mid season <br> up to <span>70%</span></h3>
                        <a href="#" class="btn">Shop Now</a>
                    </div>
                </div>
            </div>
            <!-- /End Single Banner  -->
        </div>
    </div>
</section>
<!-- End Midium Banner -->
<!-- Deal of Days -->
<div class="product-area most-popular section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Deals of the Day</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">


                    <!-- End Single Product -->
                    <?php foreach ($product as $value) : ?>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>">
                                    <img class="default-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                    <img class="hover-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                </a>
                                <div class="button-head">
                                    <div class="product-action">
                                        <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#<?php echo $value['id'] ?>"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                        <a title="Wishlist" href="<?php echo base_url('web/Collection/wishlist/') . $value['id'] ?>"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>

                                    </div>
                                    <div class="product-action-2">
                                        <a title="Add to cart" href="<?php echo base_url('web/Collection/addtocard/') . $value['id'] ?>">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3> <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>"><?php echo $value['name'] ?></a></h3>
                                <div class="product-price"> <?php
                                                            $total = $value['price'];
                                                            $dis = $value['discount'];
                                                            $dis_pri =  $value['price'] * ($value['discount'] / 100);
                                                            $regular = $total - $dis_pri;
                                                            ?>
                                    <span class="old">₹<?php echo $regular ?></span>
                                    <span>₹<?php echo $value['price'] ?></span>
                                </div>
                            </div>
                        </div>

                    <?php endforeach; ?>


                </div>
            </div>
        </div>
    </div>
</div>
<!-- Deal of Days -->

<!-- popular in Men's -->

<div class="product-area most-popular ">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Popular in Men's</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <?php foreach ($product as $value) : ?>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>">
                                    <img class="default-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                    <img class="hover-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                </a>
                                <div class="button-head">
                                    <div class="product-action">
                                        <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#<?php echo $value['id'] ?>"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                        <a title="Wishlist" href="<?php echo base_url('web/Collection/wishlist/') . $value['id'] ?>"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>

                                    </div>
                                    <div class="product-action-2">
                                        <a title="Add to cart" href="<?php echo base_url('web/Collection/addtocard/') . $value['id'] ?>">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3> <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>"><?php echo $value['name'] ?></a></h3>
                                <div class="product-price"> <?php
                                                            $total = $value['price'];
                                                            $dis = $value['discount'];
                                                            $dis_pri =  $value['price'] * ($value['discount'] / 100);
                                                            $regular = $total - $dis_pri;
                                                            ?>
                                    <span class="old">₹<?php echo $regular ?></span>
                                    <span>₹<?php echo $value['price'] ?></span>
                                </div>
                            </div>
                        </div>

                    <?php endforeach; ?>


                </div>
                <a href="<?php echo base_url('web/shop/shop_by_category/11')  ?>" class="viewallbtn">View All</a>
            </div>
        </div>
    </div>
</div>
<!-- popular in Men's -->
<!-- Start Most Popular -->
<div class="product-area most-popular section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>popular in Womens</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <?php foreach ($product as $value) : ?>
                        <div class="single-product">
                            <div class="product-img">
                                <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>">
                                    <img class="default-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                    <img class="hover-img" src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                </a>
                                <div class="button-head">
                                    <div class="product-action">
                                        <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#<?php echo $value['id'] ?>"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                        <a title="Wishlist" href="<?php echo base_url('web/Collection/wishlist/') . $value['id'] ?>"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>

                                    </div>
                                    <div class="product-action-2">
                                        <a title="Add to cart" href="<?php echo base_url('web/Collection/addtocard/') . $value['id'] ?>">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3> <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>"><?php echo $value['name'] ?></a></h3>
                                <div class="product-price"> <?php
                                                            $total = $value['price'];
                                                            $dis = $value['discount'];
                                                            $dis_pri =  $value['price'] * ($value['discount'] / 100);
                                                            $regular = $total - $dis_pri;
                                                            ?>
                                    <span class="old">₹<?php echo $regular ?></span>
                                    <span>₹<?php echo $value['price'] ?></span>
                                </div>
                            </div>
                        </div>

                    <?php endforeach; ?>


                </div>
                <a href="<?php echo base_url('web/shop/shop_by_category/12')  ?>" class="viewallbtn">View All</a>
            </div>
        </div>
    </div>
</div>
<!-- End Most Popular Area -->

<!-- Start Shop Home List  -->
<section class="shop-home-list section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Popular in Kid's</h1>
                        </div>
                    </div>
                </div>
                <?php foreach ($Best_Sell_product as $value) : ?>
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                    <img src="https://via.placeholder.com/115x140" alt="#">
                                    <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h4 class="title"><a href="#">Licity jelly leg flat Sandals</a></h4>
                                    <p class="price with-discount">Rs.59</p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <a href="#" class="viewallbtn">View All</a>
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Best Seller</h1>
                        </div>
                    </div>
                </div>
                <?php foreach ($Best_Sell_product as $value) : ?>
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                    <img src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                    <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h5 class="title"><a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>"><?php echo $value['name'] ?></a></h5>
                                    <p class="price with-discount"> <?php
                                                                    $total = $value['price'];
                                                                    $dis = $value['discount'];
                                                                    $dis_pri =  $value['price'] * ($value['discount'] / 100);
                                                                    $regular = $total - $dis_pri;
                                                                    ?>₹<?php echo $regular ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <a href="#" class="viewallbtn">View All</a>
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>On Sale</h1>
                        </div>
                    </div>
                </div>
                <?php foreach ($on_Sell_product as $value) : ?>
                    <!-- Start Single List  -->
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                    <img src="<?php echo base_url('/uploads/product/') . $value['profile_pic'] ?>" alt="#">
                                    <a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h5 class="title"><a href="<?php echo base_url('web/shop/product_details/') . $value['id'] ?>"><?php echo $value['name'] ?></a></h5>
                                    <p class="price with-discount"> <?php
                                                                    $total = $value['price'];
                                                                    $dis = $value['discount'];
                                                                    $dis_pri =  $value['price'] * ($value['discount'] / 100);
                                                                    $regular = $total - $dis_pri;
                                                                    ?>₹<?php echo $regular ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single List  -->
                <?php endforeach; ?>


                <a href="#" class="viewallbtn">View All</a>
            </div>
        </div>
    </div>
</section>
<!-- End Shop Home List  -->

<!-- Start Cowndown Area -->
<!-- <section class="cown-down">
		<div class="section-inner ">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6 col-12 padding-right">
						<div class="image">
							<img src="https://via.placeholder.com/750x590" alt="#">
						</div>	
					</div>	
					<div class="col-lg-6 col-12 padding-left">
						<div class="content">
							<div class="heading-block">
								<p class="small-title">Deal of day</p>
								<h3 class="title">Beatutyful dress for women</h3>
								<p class="text">Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien. </p>
								<h1 class="price">Rs.1200 <s>Rs.1890</s></h1>
								<div class="coming-time">
									<div class="clearfix" data-countdown="2021/02/30"></div>
								</div>
							</div>
						</div>	
					</div>	
				</div>
			</div>
		</div>
	</section> -->
<!-- /End Cowndown Area -->



<!-- Start Shop Services Area -->
<section class="shop-services section home">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-rocket"></i>
                    <h4>Free shiping</h4>
                    <p>Orders over Rs.100</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-reload"></i>
                    <h4>Free Return</h4>
                    <p>Within 30 days returns</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-lock"></i>
                    <h4>Sucure Payment</h4>
                    <p>100% secure payment</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-tag"></i>
                    <h4>Best Peice</h4>
                    <p>Guaranteed price</p>
                </div>
                <!-- End Single Service -->
            </div>
        </div>
    </div>
</section>
<!-- End Shop Services Area -->
<!-- Modal -->

<!-- Modal end -->