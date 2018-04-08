<?php
/*
Plugin Name: Trans*Ponder Directory
Plugin URI: n/a
Description: Get Found's Hack 4 A Cause 2018 Entry
Version: 1.0
Author: Team Get Found: Andrew Lucas, Kat Tierney, Michael Wyatt
Author URI: n/a
License: MIT OL
*/

	add_action('the_content', 'load_directory');

	function load_directory($content){
	
		global $post;

		$post_slug = $post->post_name;

		if($post_slug == 'trans-gender-diverse-resource-directory'){
			include('directory.php');
		}
		else{
			return $content;
		}	
	}

	
?>
