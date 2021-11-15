<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
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

get_footer();
