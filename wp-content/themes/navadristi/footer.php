<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package navadristi
 */

?>
<!-- :: Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-4">
                <div class="footer-title">
                    <h4>Contact</h4>
                </div>
                <p></p>
                <div class="logo">

                </div>
                <div class="contact-info">
                    <div class="info-box">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="info">
                            <p> Milan Chowk Purba Line,</p>
                            <p> Near Budhi Khola, Itahari</p>
                        </div>
                    </div>
                    <div class="info-box">
                        <i class="far fa-envelope"></i>
                        <div class="info">
                            <p>ndeyehospital@gmail.com</p>
                            <p>info@ndeyehospital.com</p>
                        </div>
                    </div>
                    <div class="info-box">
                        <i class="fas fa-phone-alt"></i>
                        <div class="info">
                            <p> (+977) 025-581381</p>
                            <p> (+977) 25581381</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-title">
                    <h4>More Link</h4>
                </div>
                <?php
                wp_nav_menu(
                    array(
                        'theme_location' => 'footer-menu',
                        'container' => 'ul',
                        'depth' => 2,
                        'menu_class' => 'links',
                        // 'walker' => new WP_Bootstrap_Navwalker()
                    )
                );
                ?>

            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-title">
                    <h4>Latest Articles</h4>
                    <div class="box-articles">
                        <?php $args = array(
                            'post_type' => 'post',
                            'orderby' => 'date',
                            'order' => 'DESC',
                            'posts_per_page' => 3,

                        ); ?>
                        <?php query_posts($args); ?>




                        <?php if (have_posts()) : ?>
                            <?php while (have_posts()) : the_post(); ?>

                                <div class="blog-box-articles">
                                    <?php $imagepath = wp_get_attachment_image_src(get_post_thumbnail_ID(), 'large'); ?>
                                    <?php $post_date = get_the_date('D M j');  ?>
                                    <img class="img-fluid" src="<?php echo $imagepath[0]; ?>" alt="01 Blog" />
                                    <div class="articles">
                                        <div class="time-and-tag">
                                            <span class="time"><?php echo $post_date; ?> </span>
                                        </div>
                                        <h5>
                                            <a href="<?php the_permalink() ?>"><?php the_title(); ?></a>
                                        </h5>
                                    </div>
                                </div>
                            <?php endwhile; ?>
                        <?php endif; ?>



                    </div>
                </div>
            </div>
        </div>
        <div class="reserved">&#64; NavaDristi 2020. All Rights Reserved.</div>
    </div>
</footer>

<!-- :: Scroll Up -->
<div class="scroll-up">
    <a href="#page" class="move-section">
        <i class="fas fa-angle-up"></i>
    </a>
</div>

<!-- :: JS -->
<!-- :: jQuery -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/jquery-3.4.1.js"></script>

<!-- :: Popper -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/popper.min.js"></script>

<!-- :: Bootstrap -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/bootstrap.min.js"></script>

<!-- :: WOW -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/wow.min.js"></script>

<!-- :: Owl Carousel -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/owl.carousel.min.js"></script>

<!-- :: Lity -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/lity.min.js"></script>

<!-- :: Waypoints -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/jquery.waypoints.min.js"></script>

<!-- :: CounterUp -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/jquery.counterup.min.js"></script>

<!-- :: Main -->
<script src="<?php echo get_template_directory_uri() ?>/assets/js/main.js"></script>

<?php wp_footer(); ?>

</body>

</html>