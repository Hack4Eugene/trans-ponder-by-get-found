<?php

	global $wpdb;

	$types = $wpdb->get_results("SELECT * FROM wp_provider_type");
	
	foreach($types as $type){

	?>

	<h1><?= $type->Type ?></h1>

	<?php
		$type_num = $type->{'Provider ID'};
		$subtypes = $wpdb->get_results("SELECT * FROM wp_provider_subtype WHERE provider_ID = '{$type_num}'");
		foreach($subtypes as $subtype){
			$entry = $wpdb->get_results("SELECT * FROM wp_volunteer_form WHERE `Provider Subtype` = '{$subtype->Subtype_ID}' AND Publish = 1");
			echo '<h3>' . $subtype->{'Subtype Name'} . '</h3>';
			echo '<table border=0>';
			foreach($entry as $ent){
				echo '<tr><td>' . $ent->{'Provider Name'} . '</td>';
				echo '<td>' . $ent->{'Address'} . '</td>';
				echo '<td>' . $ent->{'Phone'} . '</td>';
				echo '<td>';
				$services = array('Experience', 'OHP', 'Private Ins', 'Medicare', 'Sliding Payments', 'Awareness Training', 'Gender Options', 'Pronouns', 'Preferred Name', 'Hormone Monitoring');
				$actual = array();
				foreach($services as $service){
					if($ent->{$service} != 0)
						$actual[] = $service;
				}
				foreach($actual as $ac){
					echo $ac . '<br>';
				}
				echo '</td></tr>';
			}
			echo '</table>';
		}
	}


?>
