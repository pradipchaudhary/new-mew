<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package navadristi
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">

    <!-- :: Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet" />

    <!-- :: Font Awesome CSS -->
    <!-- <link rel="stylesheet" href="assets/fonts/fontawesome/css/all.min.css"> -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />

    <!-- :: Flaticon CSS -->
    <!-- <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/fonts/flaticon/css/flaticon.css" /> -->

    <!-- :: Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/bootstrap.min.css" />

    <!-- :: Animate CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/animate.css" />

    <!-- :: lity CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/lity.min.css" />

    <!-- :: Owl Carousel CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/owl.theme.default.css" />

    <!-- :: Style CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/style.css" />

    <!-- :: Style Responsive CSS -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri() ?>/assets/css/responsive.css" />

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <?php wp_head(); ?>
</head>

<body>

    <?php $logoimg = get_header_image(); ?>

    <?php echo $logoimg; ?>
    <!-- :: Loading -->
    <div class="loading">
        <div class="display-table">
            <div class="table-cell">
                <div class="loading-box">
                    <div class="loader">
                        <div class="wave top-wave">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                        <div class="wave bottom-wave">
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                            <div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- :: Top Bar -->
    <div class="top-bar" id="page">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="contact-top-bar">
                        <a href="#"><i class="fas fa-map-marker-alt"></i> Milan Chowk purba line, Itahari</a>
                        <a href="#"><i class="fas fa-envelope"></i> info@ndeyehospital.com</a>
                        <a href="#"><i class="fas fa-phone"></i> +(+977) 025 581381</a>
                    </div>
                </div>
                <div class="col-md-3">
                    <ul class="social-media-top-bar">
                        <li>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fab fa-behance"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- :: Navbar -->
    <nav class="nav-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="nav-brand">
                        <?php $logoimg = get_header_image(); ?>
                        <a href="<?php echo site_url(); ?>" class="brand">
                            <!-- <img class="img-fluid" src="<?php echo $logoimg; ?>" alt="Nav Logo" /> -->
                            <img class="img-fluid main-logo" src="<?php echo get_template_directory_uri() ?>/assets/images/01_logo.jpg" alt="Nav Logo" />

                            <!-- <?php the_custom_logo(); ?> -->
                        </a>
                        <button class="nav-bar-toggler">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                </div>
                <div class="col-lg-9 small-menu">
                    <div class="nav-menu-links">

                        <?php
                        wp_nav_menu(
                            array(
                                'theme_location' => 'menu-1',
                                'container' => 'ul',
                                'depth' => 2,
                                'menu_class' => 'menu-links',
                                // 'walker' => new WP_Bootstrap_Navwalker()
                            )
                        );
                        ?>
                        <!-- <ul class="menu-links">
                        <li class="item active">
                            <a href="#" class="item-link">Home</a>
                        </li>
                        <li class="item">
                            <a href="#" class="item-link">About Us</a>
                       
                    <ul class="menu-links">
                        <li class="item">
                            <a href="appointment.html" class="btn-2">Book An Appoinment</a>
                        </li>
                    </ul> -->
                    </div>
                </div>
            </div>
        </div>
    </nav>