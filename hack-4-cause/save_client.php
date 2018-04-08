<?php

	require_once(__DIR__ . '/../../../wp-load.php');
	global $wpdb;
	$_POST = $_POST['data'];

	if($_POST['0']['value'] == "Choose One")
		$type = 0;
	else
		$type = $_POST['0']['value'];

	if($_POST[1]['value'] == "")
		$subtype = 0;
	else
		$subtype = $_POST[1]['value'];
	$date = date('Y-m-d');

	$results = $wpdb->insert('wp_community_form', array(
		'Provider Subtype' => $subtype,
		'Provider Category' => $type,
		'Provider Name' => $_POST[2]['value'],
		'Office / Clinic Name' => $_POST[3]['value'],
		'Address' => $_POST[4]['value'],
		'Phone Number' => $_POST[5]['value'],
		'Email' => $_POST[6]['value'],
		'Web Address' => $_POST[7]['value'],
		'Feedback' => $_POST[8]['value'],
		'Comments' => $_POST[9]['value'],
		'Rating' => $_POST[10]['value'],
		'Date' => $date,
		'Status' => 1	
		)
	);

	echo var_dump($wpdb->last_error);

	

?>