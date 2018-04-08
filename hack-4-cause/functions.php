<?php

/*
Plugin Name: Get Found's Hack 4 A Cause
Plugin URI: n/a
Description: Get Found's Hack 4 A Cause 2018 Entry
Version: 1.0
Author: Team Get Found: Andrew Lucas, Kat Tierney, Michael Wyatt
Author URI: n/a
License: MIT OL
*/

	//add_action('wp_print_scripts', 'form_switch', 100);
	add_action('the_content', 'form_switch');
	add_action('wp_enqueue_scripts', 'load_js');
	global $post;
	$post_slug = $post->post_name;
	/*switch($post_slug){
		case 'community-submission':
			add_action('the_content', 'form_switch');
			break;
	}*/

	function form_switch($content){
		global $post;
    		global $wp_roles;

		$current_user = wp_get_current_user();
		$roles = $current_user->roles;
		$post_slug=$post->post_name;
		switch($post_slug){
			case 'community-submission':
				include('forms/provider.php');
				break;
			case 'directory':
				echo $content;
				if($roles[0] == 'editor' || $roles[0] == 'administrator')
					echo '<a href="volunteer-queue"><button>View Volunteer Queue</button></a>';
				if($roles[0] == 'administrator'){
					echo '<a href="admin-queue"><button>View Administrative Queue</button></a>';
				}
				break;
			case 'volunteer-queue':
				include('forms/volunteer_queue.php');
				break;
			case 'admin-queue':
				include('forms/admin_queue.php');
				break;
			case 'volunteer-form':
				include('forms/volunteer_form.php');
				break;
			case 'admin-form':
				include('forms/admin_form.php');
				break;
			default:
				return $content;
				break;
		}
		return;
	}

	function load_js(){
		wp_enqueue_script('dynamic', plugins_url('/js/dynamic.js', __FILE__));
	}

?>