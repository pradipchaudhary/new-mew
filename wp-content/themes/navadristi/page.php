<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package navadristi
 */

get_header();
?>

	<!-- :: Breadcrumb Header -->
	<section class="breadcrumb-header" id="page">
            <div class="overlay"></div>
            <div class="container">
                <div class="banner">
                    <div class="head-info text-center">
                        <h1>About Us</h1>
                        <ul class="list-breadcrumb">
                            <li><a href="<?php echo site_url(); ?>">Home</a></li>
                            <li><i class="fas fa-angle-right"></i></li>
                            <li><?php the_title(); ?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- :: About -->
        <section class="about py-100" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
						<h2> <?php the_title(); ?></h2>
                        <p>
						<?php the_content(); ?>
						</p>
                    </div>
                   
                </div>
            </div>
        </section>
        





		<?php
		while ( have_posts() ) :
			the_post();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>



<?php
get_footer();
