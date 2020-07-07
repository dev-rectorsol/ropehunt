<?php include 'layout/css.php'; ?>
<!-- Start Header Area -->
<?php include 'layout/header.php'; ?>




<?php echo $main_content; ?>


<!-- Scroll to top start -->
<div class="scroll-top not-visible">
	<i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- Start Footer Area -->
<footer class="footer">
	<!-- Footer Top -->
	<div class="footer-top section">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 col-12">
					<!-- Single Widget -->
					<div class="single-footer about">
						<div class="logo">
							<a href="index.html"><img src="<?php echo base_url() ?>/assets/images/logo2.png" alt="#"></a>
						</div>
						<p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
						<p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
					</div>
					<!-- End Single Widget -->
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<!-- Single Widget -->
					<div class="single-footer links">
						<h4>Information</h4>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Faq</a></li>
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Help</a></li>
						</ul>
					</div>
					<!-- End Single Widget -->
				</div>
				<div class="col-lg-2 col-md-6 col-12">
					<!-- Single Widget -->
					<div class="single-footer links">
						<h4>Customer Service</h4>
						<ul>
							<li><a href="#">Payment Methods</a></li>
							<li><a href="#">Money-back</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="#">Shipping</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>
					<!-- End Single Widget -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Single Widget -->
					<div class="single-footer social">
						<h4>Get In Touch</h4>
						<!-- Single Widget -->
						<div class="contact">
							<ul>
								<?php foreach ($contact as $value) : ?>
									<li><i class="pe-7s-home"></i><?php echo $value['address'] ?></li>
									<li><i class="pe-7s-mail"></i> <a href="<?php echo $value['email'] ?>"><?php echo $value['email'] ?> </a></li>
									<li><i class="pe-7s-call"></i> <a href="<?php echo $value['phone'] ?>"><?php echo $value['phone'] ?></a></li>
								<?php endforeach; ?>
							</ul>
						</div>
						<!-- End Single Widget -->
						<ul>
							<li><a href="#"><i class="ti-facebook"></i></a></li>
							<li><a href="#"><i class="ti-twitter"></i></a></li>
							<li><a href="#"><i class="ti-flickr"></i></a></li>
							<li><a href="#"><i class="ti-instagram"></i></a></li>
						</ul>
					</div>
					<!-- End Single Widget -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Footer Top -->
	<div class="copyright">
		<div class="container">
			<div class="inner">
				<div class="row">
					<div class="col-lg-6 col-12">
						<div class="left">
							<p>Copyright © 2020 <a href="http://www.ropehunt.com" target="_blank">ropehunt.com</a> - All Rights Reserved.</p>
						</div>
					</div>
					<div class="col-lg-6 col-12">
						<div class="right">
							<img src="<?php echo base_url() ?>/assets/images/payments.png" alt="#">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- /End Footer Area -->



<?php include 'layout/footer.php'; ?>