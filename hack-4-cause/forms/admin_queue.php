<?php


	require_once(__DIR__ . '/../../../../wp-load.php');
	global $wpdb;

	$results = $wpdb->get_results("SELECT * FROM wp_volunteer_form WHERE Status = '2' AND Publish != '1' ORDER BY Date DESC");

	echo '<table border=1>';
	echo '<tr><td>Provider Name</td><td>Clinic</td><td>Date Submitted</td></tr>';

	foreach($results as $result){
		echo '<tr><td>' . $result->{'Provider Name'} . '</td>';
		echo '<td>' . $result->{'Office / Clinic'} . '</td>';
		echo '<td><a href="../admin-form?type=v&id=' . $result->{'Volunteer ID'} . '"><button>Update</button></a></td></tr>';
	}
	
	echo '</table>';

?>

