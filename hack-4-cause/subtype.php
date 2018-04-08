<?php

	require_once(__DIR__ . '/../../../wp-load.php');
	global $wpdb;
	$provider = $wpdb->get_results("SELECT * FROM wp_provider_subtype WHERE Provider_ID = {$_POST['sub']}");
	echo 'Select Provider Subtype';
	echo '<select id="prov_subt" name="subtype">';
	echo '<option>Choose One</option>';
	foreach($provider as $prov){
		echo '<option value="' . $prov->Provider_ID . '">' . $prov->{'Subtype Name'} . '</option>';
	}
	echo '</select>';

?>