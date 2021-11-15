<?php

/**
 * Template Name: Contact Us
 *
 * Contact us template 
 *
 * @package navadristi
 */
get_header() ?>
<!-- :: Breadcrumb Header -->
<section class="breadcrumb-header" id="page">
    <div class="overlay"></div>
    <div class="container">
        <div class="banner">
            <div class="head-info text-center">
                <h1><?php the_title(); ?>s</h1>
                <ul class="list-breadcrumb">
                    <li><a href="<?php echo site_url(); ?>">Home</a></li>
                    <li><i class="fas fa-angle-right"></i></li>
                    <li><?php the_title(); ?></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!-- :: Contact Us  -->
<section id="contact-us">
    <div class="container">
        <div class="contactInfo">
            <div>
                <h2>Contact Info</h2>
                <ul class="info">
                    <li>
                        <span><img src="https://i.ibb.co/cbnfrDF/location.png" /></span>
                        <span>
                            Milan Chowk purba line, Itahari
                        </span>
                    </li>
                    <li>
                        <span><img src="https://i.ibb.co/rbbwDkP/mail.png" /></span>
                        <span>info@ndeyehospital.com</span>
                    </li>
                    <li>
                        <span><img src="https://i.ibb.co/DGGjsW7/call.png" /></span>
                        <span>025 581381</span>
                    </li>
                </ul>
            </div>
            <ul class="sci">
                <li><a href="#"><img src="https://i.ibb.co/vxjnyw0/1.png" /></a></li>
                <li><a href="#"><img src="https://i.ibb.co/xsXK3zW/2.png" /></a></li>
                <li><a href=#"><img src="https://i.ibb.co/5jFR49X/3.png" /></a></li>

            </ul>

        </div>
        <div class="contactForm">
            <h2>Send a Message</h2>
            <div class="formBox">
                <div class="inputBox w50">
                    <input type="text" required>
                    <span>First Name</span>
                </div>
                <div class="inputBox w50">
                    <input type="text" required>
                    <span>Last Name</span>
                </div>
                <div class="inputBox w50">
                    <input type="email" required>
                    <span>Email Address</span>
                </div>
                <div class="inputBox w50">
                    <input type="text" required>
                    <span>Mobile Number</span>
                </div>
                <div class="inputBox w100">
                    <textarea required></textarea>
                    <span>Write Your Massage Here...</span>
                </div>
                <div class="inputBox w100">
                    <input type="submit" value="Send">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- :: Google Map  -->
<section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1782.8057094778994!2d87.2827958567044!3d26.66092127730147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6df09be19ea1%3A0x2dbd761f086a3b05!2sNava%20Dristi%20Eye%20Hospital%20Pvt.%20Ltd!5e0!3m2!1sen!2snp!4v1633856477976!5m2!1sen!2snp" width="100%" height="650" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</section>

<?php get_footer() ?>