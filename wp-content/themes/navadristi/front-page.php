<?php

/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package navadristi
 */

get_header();
?>
<!-- hero section  -->
<?php
echo do_shortcode('[smartslider3 slider="1"]');
?>

<!-- :: About -->
<section class="about py-100" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="img-box">
                    <div class="about-img">
                        <img class="img-fluid" src="<?php echo get_template_directory_uri() ?>/assets/images/01_about.jpg" alt="01 About" />
                    </div>
                    <div class="open-hours">
                        <h5>Open &nbsp;&nbsp; hours</h5>
                        <p class="day"> Sunday - Friday </p>
                        <p>8 AM to 5 PM </p>

                        <br>
                        <p> Saturday </p>
                        <p> ( Emergency Only ) </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="text-box">
                    <div class="sec-title">
                        <h2>Welcome To NavaDristi</h2>
                        <h3>
                            Professional Medical &amp; Health Care In
                            <span>Full Measure</span>
                        </h3>
                    </div>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has
                        survived not only five centuries.
                    </p>
                    <img class="img-fluid signature" src="<?php echo get_template_directory_uri() ?>/assets/images/01_signature.png" alt="01 Signature" />
                    <a href="#" class="btn-2">Read More</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- :: Services -->
<section class="services py-100">
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="sec-title text-center">
                    <h2>Our Services</h2>
                    <h3>High Quality <span>Services</span></h3>
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                    <p>

                    </p>
                </div>
            </div>
        </div>
        <div class="services-box owl-carousel owl-theme ">
            <?php
            // the query
            $the_query = new WP_Query(array(
                'post_type' => 'services',
                'post_status' => 'publish',
                'posts_per_page' => 3,
            ));
            ?>
            <?php if ($the_query->have_posts()) : ?>
                <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                    <?php $imagepath = wp_get_attachment_image_src(get_post_thumbnail_ID(), 'large'); ?>
                    <div class="item-services">
                        <img src="<?php echo $imagepath[0]; ?>" alt="">
                        <h4><?php the_title(); ?></h4>
                        <p>
                            <?php the_excerpt(); ?>
                        </p>
                        <a href="<?php the_permalink() ?>">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>

                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>

            <?php else : ?>
                <p><?php __('No News'); ?></p>
            <?php endif; ?>

        </div>
    </div>
</section>

<!-- :: Features -->
<section class="features py-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="features-one">
                    <div class="sec-title">
                        <h2>Why Choose Us</h2>
                        <h3>
                            NavaDristi Are A Professional Medical &amp; Health Care Services Provider Institutions. Suitable For Hospitals, Dentists, Gynecologists, Physiatrists.
                        </h3>
                    </div>
                    <p>
                        Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.
                    </p>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </p>
                    <img class="img-fluid signature" src="<?php echo get_template_directory_uri() ?>/assets/images/01_signature.png" alt="01 Signature" />
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-watch">
                    <div class="about-img">
                        <img class="img-fluid" src="<?php echo get_template_directory_uri() ?>/assets/images/01_features.jpg" alt="01 Features" />
                    </div>
                    <div class="watch">
                        <a href="https://www.youtube.com/watch?v=_XedddL6SkE" data-lity><i class="fas fa-play"></i> Watch Video!</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-two">
                    <div class="item-features">
                        <i class="fas fa-check icon-item"></i>
                        <div class="text-item">
                            <h5>Qulified Doctors</h5>
                            <p>
                                Lorem Ipsum is simply text of the printing and typesetting
                                industry. Lorem Ipsum has been standard dummy.
                            </p>
                        </div>
                    </div>
                    <div class="item-features">
                        <i class="fas fa-check icon-item"></i>
                        <div class="text-item">
                            <h5>Leading Technology</h5>
                            <p>
                                Lorem Ipsum is simply text of the printing and typesetting
                                industry. Lorem Ipsum has been standard dummy.
                            </p>
                        </div>
                    </div>
                    <div class="item-features">
                        <i class="fas fa-check icon-item"></i>
                        <div class="text-item">
                            <h5>Emergency Operation </h5>
                            <p>
                                Lorem Ipsum is simply text of the printing and typesetting
                                industry. Lorem Ipsum has been standard dummy.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- :: Testimonials -->
<section class="testimonials">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="testimonials-img-box">
                    <div class="img-box"></div>
                    <div class="">
                        <div class="statistic-item">
                            <i class="flaticon-doctor icon-item"></i>

                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="testimonials-text-box">
                    <div class="sec-title">
                        <h2>Testimonials</h2>
                    </div>
                    <div class="testimonials-carousel owl-carousel owl-theme">
                        <div class="box-item-testimonials">
                            <div class="text">
                                My light glasses also gives me comfort working at home or in the office. Thank You navadristi for your services.
                            </div>
                            <div class="item-talk">
                                <div class="img-box">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri() ?>/assets/images/03_testimonials.jpg" alt="02 Testimonials" />
                                </div>
                                <div class="info">
                                    <h5>Amit kc</h5>
                                    <span>Teacher</span>
                                </div>
                            </div>
                        </div>
                        <div class="box-item-testimonials">
                            <div class="text">
                                I want to thank everyone at this facility for the quality of
                                care and compassion they showed during my stay. The staff
                                supported me during my treatment.
                            </div>
                            <div class="item-talk">
                                <div class="img-box">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri() ?>/assets/images/03_testimonials.jpg" alt="03 Testimonials" />
                                </div>
                                <div class="info">
                                    <h5> </h5>
                                    <span>Businessman</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>




<!-- :: Map and Contact -->
<section class="map-and-contact">
    <div class="map">
        <div class="map-box">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3565.60804854807!2d87.28349591323072!3d26.661029143608374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6df09be19ea1%3A0x2dbd761f086a3b05!2sNava%20Dristi%20Eye%20Hospital%20Pvt.%20Ltd!5e0!3m2!1sen!2snp!4v1632136065049!5m2!1sen!2snp" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            <!-- <iframe src="https://maps.google.com/maps?q=manhatan&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe> -->
        </div>
    </div>
    <div class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-6 ml-auto">
                    <div class="contact">
                        <div class="sec-title">
                            <h3>Get In Touch</h3>
                        </div>
                        <p>
                            Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.
                        </p>
                        <div class="row">
                            <div class="col-sm-6 message-box">
                                <input type="text" name="name" placeholder="Name" />
                            </div>
                            <div class="col-sm-6 message-box">
                                <input type="email" name="email" placeholder="Email" />
                            </div>
                            <div class="col-sm-6 message-box">
                                <input type="tel" name="tel" placeholder="Phone" />
                            </div>
                            <div class="col-sm-6 message-box">
                                <input type="text" name="Subject" placeholder="Subject" />
                            </div>
                            <div class="col-lg-12 message-box">
                                <textarea placeholder="Leave Your Message Here....."></textarea>
                            </div>
                            <div class="col-lg-12 message-box">
                                <a href="#" class="btn-1">Send Your Message</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- :: Blog & Events -->
<section class="blog py-100-70">
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="sec-title text-center">
                    <h2>Latest Articles</h2>
                    <h3>Get Every Single <span>Updates</span> From Here</h3>
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                    <p>

                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            // the query
            $the_query = new WP_Query(array(
                'category_name' => 'news',
                'orderby' => 'date',
                'post_status' => 'publish',
                'posts_per_page' => 3,
            ));
            ?>

            <?php if ($the_query->have_posts()) : ?>
                <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                    <?php $post_date = get_the_date('D M j');  ?>
                    <div class="col-md-6 col-lg-4">
                        <div class="blog-item">
                            <?php $imagepath = wp_get_attachment_image_src(get_post_thumbnail_ID(), 'large'); ?>
                            <div class="img-blog">
                                <img class="img-fluid" src="<?php echo $imagepath[0]; ?>" alt="01 Blog" />
                                <i class="fas fa-heart like"></i>
                            </div>
                            <div class="text-blog">
                                <div class="time-and-tag">

                                    <span class="time"><?php echo $post_date; ?></span>
                                </div>
                                <h5 class="title-blog">
                                    <a href="<?php the_permalink(); ?>"><?php echo the_title(); ?></a>
                                </h5>
                                <p>
                                    <?php the_excerpt(); ?>
                                </p>
                                <a href="<?php the_permalink(); ?>" class="blog-open">Read More <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>

                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>

            <?php else : ?>
                <p><?php __('No News'); ?></p>
            <?php endif; ?>

        </div>
    </div>
</section>







<?php get_footer(); ?>