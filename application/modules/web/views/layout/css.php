<html lang="en">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <?php foreach ($title as $value) : ?>
        <title><?php echo $value['title'] ?></title>
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url($value['source']) ?>/assets/img/favicon.ico">
    <?php endforeach; ?>
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <!-- StyleSheet -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/reset.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/style.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/responsive.css">
    <style>
        .p-t-65 {
            padding-top: 65px;
        }

        .header.shop .nav li a {
            text-transform: uppercase;
        }

        a.viewallbtn {
            text-align: center;
            width: 150px;
            display: block;
            margin: 0 auto;
            font-weight: 600;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 13px;
            border-radius: .25rem;
            background: #333;
            color: #fff !important;
            padding: 10px 27px;
            border-radius: 30px;
            margin-top: 50px;
            text-transform: uppercase;
        }
    </style>


</head>

<body class="js">

    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- End Preloader -->