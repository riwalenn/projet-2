<?php
/** Theme Name	: Enigma
* Theme Core Functions and Codes
*/

	/**Includes required resources here**/
	define('WL_TEMPLATE_DIR_URI', get_template_directory_uri());
	define('WL_TEMPLATE_DIR', get_template_directory());
	define('WL_TEMPLATE_DIR_CORE' , WL_TEMPLATE_DIR . '/core');
	require( WL_TEMPLATE_DIR_CORE . '/menu/default_menu_walker.php' );
	require( WL_TEMPLATE_DIR_CORE . '/menu/weblizar_nav_walker.php' );
	
	require( WL_TEMPLATE_DIR_CORE . '/scripts/css_js.php' ); //Enquiring Resources here	
	require( WL_TEMPLATE_DIR_CORE . '/comment-function.php' );	
	require(dirname(__FILE__).'/customizer.php');
	require get_template_directory() . '/core/custom-header.php';
		require( get_template_directory() . '/class-tgm-plugin-activation.php' );
	//Sane Defaults
	function weblizar_default_settings()
{
	$ImageUrl =  esc_url(get_template_directory_uri() ."/images/1.png");
	$ImageUrl2 = esc_url(get_template_directory_uri() ."/images/2.png");
	$ImageUrl3 = esc_url(get_template_directory_uri() ."/images/3.png");
	$ImageUrl4 = esc_url(get_template_directory_uri() ."/images/portfolio1.png");
	$ImageUrl5 = esc_url(get_template_directory_uri() ."/images/portfolio2.png");
	$ImageUrl6 = esc_url(get_template_directory_uri() ."/images/portfolio3.png");
	$ImageUrl7 = esc_url(get_template_directory_uri() ."/images/portfolio4.png");
	$wl_theme_options=array(
			//Logo and Fevicon header
			'title_position'=>'',
			'upload__header_image'=>'',
			'upload_image_logo'=>'',
			'height'=>'55',
			'width'=>'150',
			'_frontpage' => '1',
			'blog_count'=>'3',			
			'custom_css'=>'',
			'excerpt_blog'=>'55',
			'home_reorder'=>'',
			'upload_image_favicon'=>'',
			'snoweffect'=>'',
			'read_more'=>__('Read More', 'enigma' ),
			'autoplay'=>'1',
			'breadcrumb'=>'1',
			'box_layout'=>'1',

			'slider_image_speed' => '',
			'slide_image_1' => $ImageUrl,
			'slide_title_1' => __('Slide Title', 'enigma' ),
			'slide_desc_1' => __('Lorem Ipsum is simply dummy text of the printing', 'enigma' ),
			'slide_btn_text_1' => __('Read More', 'enigma' ),
			'slide_btn_link_1' => '#',
			'slide_image_2' => $ImageUrl2,
			'slide_title_2' => __('variations of passages', 'enigma' ),
			'slide_desc_2' => __('Contrary to popular belief, Lorem Ipsum is not simply random text', 'enigma' ),
			'slide_btn_text_2' => __('Read More', 'enigma' ),
			'slide_btn_link_2' => '#',
			'slide_image_3' => $ImageUrl3,
			'slide_title_3' => __('Contrary to popular ', 'enigma' ),
			'slide_desc_3' => __('Aldus PageMaker including versions of Lorem Ipsum, rutrum turpi', 'enigma' ),
			'slide_btn_text_3' => __('Read More', 'enigma' ),
			'slide_btn_link_3' => '#',
			'slider_anim'=>'',
			// Footer Call-Out
			'fc_home'=>'1',			
			'fc_title' => __('Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'enigma' ),
			'fc_btn_txt' => __('More Features', 'enigma' ),
			'fc_btn_link' =>"#",
			'fc_icon' => 'fa fa-thumbs-up', 
			//Social media links
			'header_social_media_in_enabled'=>'1',
			'footer_section_social_media_enbled'=>'1',
			'twitter_link' =>"#",
			'fb_link' =>"#",
			'linkedin_link' =>"#",
			'youtube_link' =>"#",
			'instagram' =>"#",
			'gplus' =>"#",
			'vk_link' =>"#",
			'qq_link' => "#",
			'whatsapp_link' => "#",
			
			'email_id' => 'example@mymail.com',
			'phone_no' => '0159753586',
			'footer_customizations' => __(' &#169; 2016 Enigma Theme', 'enigma' ),
			'developed_by_text' => __('Theme Developed By', 'enigma' ),
			'developed_by_weblizar_text' => __('Weblizar Themes', 'enigma' ),
			'developed_by_link' => 'http://weblizar.com/',
			'services_home'=>'1',
			'home_service_heading' => __('Our Services', 'enigma' ),
			'service_1_title'=>__("Idea",'enigma' ),
			'service_1_icons'=>"fa-google",
			'service_1_text'=>__("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.", 'enigma' ),
			'service_1_link'=>"#",
			
			'service_2_title'=>__('Records', 'enigma' ),
			'service_2_icons'=>"fa-database",
			'service_2_text'=>__("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.", 'enigma' ),
			'service_2_link'=>"#",
			
			'service_3_title'=>__("WordPress", 'enigma' ),
			'service_3_icons'=>"fa-wordpress",
			'service_3_text'=>__("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in.", 'enigma' ),
			'service_3_link'=>"#",			
			'product_title'=>'',
			
			
			//Portfolio Settings:
			'portfolio_home'=>'1',
			'port_heading' => __('Recent Works', 'enigma' ),
			'port_1_img'=> $ImageUrl4,
			'port_1_title'=>__('Bonorum', 'enigma' ),
			'port_1_link'=>'#',
			'port_2_img'=> $ImageUrl5,			
			'port_2_title'=>__('Content', 'enigma' ),
			'port_2_link'=>'#',
			'port_3_img'=> $ImageUrl6,
			'port_3_title'=>__('dictionary', 'enigma' ),
			'port_3_link'=>'#',
			'port_4_img'=> $ImageUrl7,
			'port_4_title'=>__('randomised', 'enigma' ),
			'port_4_link'=>'#',
			//BLOG Settings
			'blog_home' => '1',
			'blog_title'=>__('Latest Blog', 'enigma' ),
			'blog_speed'=>'2000',
			'blog_category'=>'',
			
			//Google font style
			'main_heading_font' => 'Open Sans',
			'menu_font' => 'Open Sans',
			'theme_title' => 'Open Sans',
			'desc_font_all' => 'Open Sans'
			
			
		);
		return apply_filters( 'enigma_options', $wl_theme_options );
}
	function weblizar_get_options() {
    // Options API
    return wp_parse_args( 
        get_option( 'enigma_options', array() ), 
        weblizar_default_settings() 
    );    
	}
	
	$args = array(
	'flex-width'    => true,
	'width'         => 2000,
	'flex-height'    => true,
	'height'        => 100,
	'default-image' => get_template_directory_uri() . '/images/header-bg.jpg',
	'wp-head-callback'   => 'enigma_header_style',
);
add_theme_support( 'custom-header', $args );

	
	/*After Theme Setup*/
	add_action( 'after_setup_theme', 'weblizar_head_setup' ); 	
	function weblizar_head_setup()
	{	
		global $content_width;
		//content width
		if ( ! isset( $content_width ) ) $content_width = 550; //px
	
	    //Blog Thumb Image Sizes
		add_image_size('home_post_thumb',340,210,true);
		//Blogs thumbs
		add_image_size('wl_page_thumb',730,350,true);	
		add_image_size('blog_2c_thumb',570,350,true);
		add_theme_support( 'title-tag' );
		
		// Logo
		add_theme_support( 'custom-logo', array(
			'width'       => 250,
			'height'      => 250,
			'flex-width'  => true,
			'flex-height'  => true,
		));
		
		// Load text domain for translation-ready
		load_theme_textdomain( 'enigma', WL_TEMPLATE_DIR_CORE . '/lang' );	
		
		add_theme_support( 'post-thumbnails' ); //supports featured image
		// This theme uses wp_nav_menu() in one location.
		register_nav_menu( 'primary', __( 'Primary Menu', 'enigma' ) );
		// theme support 	
		$args = array('default-color' => 'ffffff',);
		add_theme_support( 'custom-background', $args); 
		add_theme_support( 'automatic-feed-links');
		$defaults = array(
	'default-image'          => '',
	'width'                  => 0,
	'height'                 => 0,
	'flex-height'            => false,
	'flex-width'             => false,
	'uploads'                => true,
	'random-default'         => false,
	'header-text'            => true,
	'default-text-color'     => '',
	'wp-head-callback'       => '',
	'admin-head-callback'    => '',
	'admin-preview-callback' => '',
);
add_theme_support( 'custom-header', $defaults );

add_theme_support( 'customize-selective-refresh-widgets' );
		
		/*
		 * This theme styles the visual editor to resemble the theme style,
		 * specifically font, colors, icons, and column width.
		 */
		add_editor_style('css/editor-style.css');
		require( WL_TEMPLATE_DIR . '/options-reset.php'); //Reset Theme Options Here				
	}
	

	// Read more tag to formatting in blog page 
	function weblizar_content_more($more)
	{  							
	   return '<div class="blog-post-details-item"><a class="enigma_blog_read_btn" href="'.get_permalink().'"><i class="fa fa-plus-circle"></i>"'.__('Read More', 'enigma' ).'"</a></div>';
	}   
	add_filter( 'the_content_more_link', 'weblizar_content_more' );
	
	
	// Replaces the excerpt "more" text by a link
	function weblizar_excerpt_more($more) {      
	return '';
	}
	add_filter('excerpt_more', 'weblizar_excerpt_more');
	
	if ( ! function_exists( 'enigma_header_style' ) ) :
	function enigma_header_style() {
		$header_text_color = get_header_textcolor();
	// If no custom options for text are set, let's bail.
	// get_header_textcolor() options: add_theme_support( 'custom-header' ) is default, hide text (returns 'blank') or any hex value.
	if ( get_theme_support( 'custom-header', 'default-text-color' ) == $header_text_color ) {
		return;
	}
	// If we get this far, we have custom styles. Let's do this.
	?>
	<style id="fashionair-custom-header-styles" type="text/css">
	<?php
		// Has the text been hidden?
		if ( 'blank' == $header_text_color ) :
	?>
		.head-contact-info li a{
		color:#fff;
		}
		.hd_cover {
		color: #fff;
		}
		.logo p {
		color: #fff;
		}
		.social i {
		color: #fff;
		}
		.social li {
		border: 2px solid #ffffff;
		}
		.logo a {
			color: #fff;
		}
	<?php
		// If the user has set a custom color for the text use that.
		else :
	?>
		.head-contact-info li a, .hd_cover, .logo p, .social i, .logo a{
			color: #<?php echo esc_attr( $header_text_color ); ?>;
		}
		.social li {
			border:2px solid #<?php echo esc_attr( $header_text_color ); ?>;
		}
	<?php endif; ?>
	</style>
	<?php
}
endif; 
	
	
	/*
	* Weblizar widget area
	*/
	add_action( 'widgets_init', 'weblizar_widgets_init');
	function weblizar_widgets_init() {
	/*sidebar*/
	register_sidebar( array(
			'name' => __( 'Sidebar', 'enigma' ),
			'id' => 'sidebar-primary',
			'description' => __( 'The primary widget area', 'enigma' ),
			'before_widget' => '<div class="enigma_sidebar_widget">',
			'after_widget' => '</div>',
			'before_title' => '<div class="enigma_sidebar_widget_title"><h2>',
			'after_title' => '</h2></div>'
		) );

	register_sidebar( array(
			'name' => __( 'Footer Widget Area', 'enigma' ),
			'id' => 'footer-widget-area',
			'description' => __( 'footer widget area', 'enigma' ),
			'before_widget' => '<div class="col-md-3 col-sm-6 enigma_footer_widget_column">',
			'after_widget' => '</div>',
			'before_title' => '<div class="enigma_footer_widget_title">',
			'after_title' => '<div class="enigma-footer-separator"></div></div>',
		) );             
	}
	
	/* Breadcrumbs  */
	function weblizar_breadcrumbs() {
    $delimiter = '';
    $home = __('Home', 'enigma' ); // text for the 'Home' link
    $before = '<li>'; // tag before the current crumb
    $after = '</li>'; // tag after the current crumb
    echo '<ul class="breadcrumb">';
    global $post;
    $homeLink = home_url();
    echo '<li><a href="' . esc_attr($homeLink) . '">' . esc_html($home) . '</a></li>' . esc_html($delimiter) . ' ';
    if (is_category()) {
        global $wp_query;
        $cat_obj = $wp_query->get_queried_object();
        $thisCat = $cat_obj->term_id;
        $thisCat = get_category($thisCat);
        $parentCat = get_category($thisCat->parent);
        if ($thisCat->parent != 0)
            echo(esc_html(get_category_parents($parentCat, TRUE, ' ' . $delimiter . ' ')));
        echo esc_html($before) . ' _e("Archive by category","enigma") "' . single_cat_title('', false) . '"' . esc_html($after);
    } elseif (is_day()) {
        echo '<li><a href="' . esc_url(get_year_link(get_the_time('Y'))) . '">' . esc_html(get_the_time('Y')) . '</a></li> ' . esc_html($delimiter) . ' ';
        echo '<li><a href="' . esc_url(get_month_link(get_the_time('Y'), get_the_time('m'))) . '">' . esc_html(get_the_time('F')) . '</a></li> ' . esc_html($delimiter) . ' ';
        echo esc_html($before) . esc_html(get_the_time('d')) . esc_html($after);
    } elseif (is_month()) {
        echo '<li><a href="' . esc_url(get_year_link(get_the_time('Y'))) . '">' . esc_html(get_the_time('Y')) . '</a></li> ' . esc_html($delimiter) . ' ';
        echo esc_html($before) . esc_html(get_the_time('F')) . esc_html($after);
    } elseif (is_year()) {
        echo esc_html($before) . esc_html(get_the_time('Y')) . esc_html($after);
    } elseif (is_single() && !is_attachment()) {
        if (get_post_type() != 'post') {
            $post_type = get_post_type_object(get_post_type());
            $slug = $post_type->rewrite;
            echo '<li><a href="' . esc_attr($homeLink) . '/' . esc_attr($slug['slug']) . '/">' . esc_html($post_type->labels->singular_name ). '</a></li> ' . esc_html($delimiter) . ' ';
            echo esc_html($before) . get_the_title() . esc_html($after);
        } else {
            $cat = get_the_category();
            $cat = $cat[0];
            //echo get_category_parents($cat, TRUE, ' ' . $delimiter . ' ');
            echo $before . get_the_title() . $after;
        }
		
    } elseif (!is_single() && !is_page() && get_post_type() != 'post') {
        $post_type = get_post_type_object(get_post_type());
        echo esc_html($before) . esc_html($post_type->labels->singular_name) . esc_html($after);
    } elseif (is_attachment()) {
        $parent = get_post($post->post_parent);
        $cat = get_the_category($parent->ID);
        //$cat = $cat[0];
       // echo get_category_parents($cat, TRUE, ' ' . $delimiter . ' ');
        echo '<li><a href="' . esc_url(get_permalink($parent)) . '">' . esc_html($parent->post_title) . '</a></li> ' . esc_html($delimiter) . ' ';
        echo esc_html($before) . get_the_title() . esc_html($after);
    } elseif (is_page() && !$post->post_parent) {
        echo $before . get_the_title() . $after;
    } elseif (is_page() && $post->post_parent) {
        $parent_id = $post->post_parent;
        $breadcrumbs = array();
        while ($parent_id) {
            $page = get_page($parent_id);
            $breadcrumbs[] = '<li><a href="' . esc_url(get_permalink($page->ID)) . '">' . get_the_title($page->ID) . '</a></li>';
            $parent_id = $page->post_parent;
        }
        $breadcrumbs = array_reverse($breadcrumbs);
        foreach ($breadcrumbs as $crumb)
            echo esc_html($crumb) . ' ' . esc_html($delimiter) . ' ';
        echo esc_html($before) . get_the_title() . esc_html($after);
    } elseif (is_search()) {
        echo $before . _e("Search results for","enigma")  . get_search_query() . '"' . $after;

    } elseif (is_tag()) {        
		echo $before . _e('Tag','enigma') . single_tag_title('', false) . $after;
    } elseif (is_author()) {
        global $author;
        $userdata = get_userdata($author);
        echo $before . _e("Articles posted by","enigma") . $userdata->display_name . $after;
    } elseif (is_404()) {
        echo $before . _e("Error 404","enigma") . $after;
    }
    echo '</ul>';
	}
	
	
	//PAGINATION
		/*function weblizar_pagination($pages = '', $range = 2)
{  
     $showitems = ($range * 2)+1;  

     global $paged;
     if(empty($paged)) $paged = 1;

     if($pages == '')
     {
         global $wp_query;
         $pages = $wp_query->max_num_pages;
         if(!$pages)
         {
             $pages = 1;
         }
     }   

     if(1 != $pages)
     {
         echo "<div class='enigma_blog_pagination'><div class='enigma_blog_pagi'>";
         if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo "<a href='".esc_url(get_pagenum_link(1))."'>&laquo;</a>";
         if($paged > 1 && $showitems < $pages) echo "<a href='".esc_url(get_pagenum_link($paged - 1))."'>&lsaquo;</a>";

         for ($i=1; $i <= $pages; $i++)
         {
             if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
             {
                echo ($paged == $i)? "<a class='active'>".esc_attr($i)."</a>":"<a href='".esc_url(get_pagenum_link($i))."'>".esc_attr($i)."</a>";
             }
         }

         if ($paged < $pages && $showitems < $pages) echo "<a href='".esc_url(get_pagenum_link($paged + 1))."'>&rsaquo;</a>";  
         if ($paged < $pages-1 &&  $paged+$range-1 < $pages && $showitems < $pages) echo "<a href='".esc_url(get_pagenum_link($pages))."'>&raquo;</a>";
         echo "</div></div>";
     }
} */
	/*===================================================================================
	* Add Author Links
	* =================================================================================*/
	function weblizar_author_profile( $contactmethods ) {	
	
	$contactmethods['youtube_profile'] = __('Youtube Profile URL','enigma');	
	$contactmethods['twitter_profile'] = __('Twitter Profile URL','enigma');
	$contactmethods['facebook_profile'] = __('Facebook Profile URL','enigma');
	$contactmethods['linkedin_profile'] = __('Linkedin Profile URL','enigma');
	
	return $contactmethods;
	}
	add_filter( 'user_contactmethods', 'weblizar_author_profile', 10, 1);
	/*===================================================================================
	* Add Class Gravtar
	* =================================================================================*/
	add_filter('get_avatar','weblizar_gravatar_class');

	function weblizar_gravatar_class($class) {
    $class = str_replace("class='avatar", "class='author_detail_img", $class);
    return $class;
	}	
	/****--- Navigation for Author, Category , Tag , Archive ---***/
	function weblizar_navigation() { ?>
	<div class="enigma_blog_pagination">
	<div class="enigma_blog_pagi">
	<?php posts_nav_link(); ?>
	</div>
	</div>
	<?php }

	/****--- Navigation for Single ---***/
	function weblizar_navigation_posts() { ?>
	<div class="navigation_en">
	<nav id="wblizar_nav"> 
	<span class="nav-previous">
	<?php previous_post_link('&laquo; %link'); ?>
	</span>
	<span class="nav-next">
	<?php next_post_link('%link &raquo;'); ?>
	</span> 
	</nav>
	</div>	
<?php
	}



//Plugin Recommend
add_action('tgmpa_register','enigma_plugin_recommend');
function enigma_plugin_recommend(){
	$plugins = array(
	array(
            'name'      => 'Responsive Coming Soon',
            'slug'      => 'responsive-coming-soon-page',
            'required'  => false,
        ),
	array(
            'name'      => 'Appointment Scheduler',
            'slug'      => 'appointment-scheduler-weblizar',
            'required'  => false,
        ), 
	array(
            'name'      => 'Admin Custom Login',
            'slug'      => 'admin-custom-login',
            'required'  => false,
        )
		
	);
    tgmpa( $plugins );
}
function enigma_custom_admin_notice() {
	wp_register_style( 'custom_admin_css', get_template_directory_uri() . '/core/admin/admin-rating.css');
    wp_enqueue_style( 'custom_admin_css' );
	wp_enqueue_style('custom-bootstrap',  get_template_directory_uri() .'/core/admin/bootstrap/css/bootstrap.css');
	wp_enqueue_script('custom-bootstrap-js',get_template_directory_uri() .'/core/admin/bootstrap/js/bootstrap.js');
	wp_enqueue_style('font-awesome', get_template_directory_uri() . '/css/font-awesome-4.7.0/css/font-awesome.css');
	$wl_th_info = wp_get_theme(); 
	$currentversion = str_replace('.','',(esc_html( $wl_th_info->get('Version') )));
	$isitdismissed = 'enigma_notice_dismissed'.$currentversion;
	if ( !get_user_meta( get_current_user_id() , $isitdismissed ) ) { ?>
		<!---our-product-features--->
		 
	
	<div class="our-product-features">	
	
		<!--<div class="col-md-2">
			<ul class="nav nav-tabs features-tabs">
				<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
				<li><a data-toggle="tab" href="#wb_theme">Theme </a></li>
				<li><a data-toggle="tab" href="#wb_plugin">Plugin </a></li>
				<li><a data-toggle="tab" href="#menu3">Rating Us</a></li>
				<li><a data-toggle="tab" href="#offer">Offers</a></li>
			</ul>
		</div>-->
		
		<div class="col-md-12">
		<a class="dismiss" href="?-notice-dismissed<?php echo esc_attr($currentversion);?>"><?php esc_html_e('Click here to dismiss This Ad.','enigma');?></strong></a>
		  <div class="tab-content features-content">
			<div id="home" class="tab-pane fade in active">
				
				
				<div class="oure-details">
				  <h3>  <span> Enigma Premium / Advanced Premium / Parallax Premium  </span></h3>
				  <div class="col-md-12 main-div"> 
					<div class="col-md-4 theme-img">
						<div class="wb_products"> 
							<div class="wb_products-inner"> 
								<a href="https://weblizar.com/themes/enigma-premium/" target="_blank"> 
								<img src="<?php echo esc_url(get_template_directory_uri()); ?>/images/Enigma1.jpg" class="img-responsive">  
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-8">
					<div class="col-md-6">
						<ul class="enigma-feature">
							<li><i class="fa fa-check"></i> 03 Home Page</li>
							<li><i class="fa fa-check"></i> Parallax Design</li>
							<li><i class="fa fa-check"></i> Theme Option Panel</li>
							<li><i class="fa fa-check"></i> 2 Service Page Template</li>
							<li><i class="fa fa-check"></i> Custom Shortcodes</li>
							<li><i class="fa fa-check"></i> 6 Portfolio Layout</li>
						</ul>
						<h4 class="getpro"> <a href="https://weblizar.com/themes/enigma-premium/" target="_blank"> Get Enigma Premium </a>							
						</h4> 
					</div>
					<div class="col-md-6">
						<ul class="enigma-feature">
							<li><i class="fa fa-check"></i> Unlimited Color Skins</li>
							<li><i class="fa fa-check"></i> Mega Menu Support</li>
							
							<li><i class="fa fa-check"></i> 10 Page Layout</li>
							<li><i class="fa fa-check"></i> 6 Blog Layout</li>
							<li><i class="fa fa-check"></i> Multilingual</li><li>
							<i class="fa fa-check"></i> Complete Documentation
						</li>
						</ul>
						
					</div>				
						
					</div>
						
					</div>
					
				</div>
				<div class="oure-details">
				<!--<h3>  <span> Review and Rating  </span></h3>-->
				
				  <!-- rating -->
				  <div class="col-md-12 main-div">
				  <div class="notice-box notice-success is-dismissible flat_responsive_notice" data-dismissible="disable-done-notice-forever">
						<div>
						<p>	
							<?php  esc_html_e('Thank you for using the free version of ','enigma'); ?>
							<?php echo esc_html( $wl_th_info->get('Name') );?> - 
							<?php echo esc_html( $wl_th_info->get('Version') );
							 ?>
							<?php esc_html_e('Please give your reviews and ratings on ','enigma'); echo esc_attr($wl_th_info->get('Name')); esc_html_e(' theme. Your ratings will help us to improve our themes.', 'enigma'); ?>
							<script type="text/javascript">alert(<?php echo esc_attr($isitdismissed)?>);</script>
							<?php if($wl_th_info->get('Name')=="Enigma") { ?>
							<div class="">
							<a class="rateme" href="<?php echo esc_url('https://wordpress.org/support/theme/enigma/reviews/?filter=5');  ?>" target="_blank" aria-label="Dismiss the welcome panel"> <?php } elseif($wl_th_info->get('Name')=="Greenigma") { ?>
							<a class="rateme" href="<?php echo esc_url('https://wordpress.org/support/theme/greenigma/reviews/?filter=5');  ?>" target="_blank" aria-label="Dismiss the welcome panel"> <?php } elseif($wl_th_info->get('Name')=="Inferno") { ?>
							<a class="rateme" href="<?php echo esc_url('https://wordpress.org/support/theme/inferno/reviews/?filter=5');  ?>" target="_blank" aria-label="Dismiss the welcome panel">		
							<?php } else { ?>
							<a class="rateme" href="<?php echo esc_url('https://wordpress.org/support/theme/cista/reviews/?filter=5');  ?>" target="_blank" aria-label="Dismiss the welcome panel">	
							<?php } ?>
								<span class="dashicons dashicons-star-filled"></span>
								<span class="dashicons dashicons-star-filled"></span>
								<span class="dashicons dashicons-star-filled"></span>
								<span class="dashicons dashicons-star-filled"></span>
								<span class="dashicons dashicons-star-filled"></span>
							</a>
							</div>
						</p>
						</div>
				</div>
				</div>
				  <!-- rating -->
				</div>
			</div>
		  </div>
		</div>
	</div>
			
		
<?php
	}
 }
add_action('admin_notices', 'enigma_custom_admin_notice');

function enigma_notice_dismissed() {
	$wl_th_info = wp_get_theme(); 
	$currentversion = str_replace('.','',(esc_html( $wl_th_info->get('Version') )));
	$dismissurl = '-notice-dismissed'.$currentversion;
	$isitdismissed = 'enigma_notice_dismissed'.$currentversion;
    $user_id = get_current_user_id();
    if ( isset( $_GET[$dismissurl] ) )
        add_user_meta( $user_id, $isitdismissed, 'true', true );
}
add_action( 'admin_init', 'enigma_notice_dismissed' );

$theme_options = weblizar_get_options();
if($theme_options['snoweffect'] =='1'){
	function snow_script() {
	wp_dequeue_script('snow', get_template_directory_uri() .'/js/snowstorm.js');
	}
	add_action( 'wp_enqueue_scripts', 'snow_script' );
}
?>