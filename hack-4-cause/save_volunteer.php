<?php

	require_once(__DIR__ . '/../../../wp-load.php');
	global $wpdb;
	

	$_POST = $_POST['data'];

	$date = date('Y-m-d');

	$sliding = 0;
	$mf = 0;
	

	foreach($_POST as $obj){
		switch($obj['name']){
			case 'type':
				$var = 'type';
				break;
			case 'stype':
				$var = 'subtype';
				break;
			case 'name':
				$var = 'name';
				break;
			case 'clinic':
				$var = 'clinic';
				break;
			case 'address':
				$var = 'address';
				break;
			case 'phone':
				$var = 'phone';
				break;
			case 'email':
				$var = 'email';
				break;
			case 'url':
				$var = 'url';
				break;
			case 'insurance':
			case 'private_ins':
				$var = 'insurance';
				break;
			case 'experience':
				$var = 'experience';
				break;
			case 'medicare':
				$var = 'medicare';
				break;
			case 'sliding':
				$var = 'sliding';
				break;
			case 'train_date':
				$var = 'training_date';
				break;
			case 'train_person':
				$var = 'training_person';
				break;
			case 'train_req':
				$var = 'training_req';
				break;
			case 'mf_options':
				$var = 'mf';
				break;
			case 'pronoun':
				$var = 'pronoun';
				break;
			case 'legal':
				$var = 'legal';
				break;
			case 'monitor':
				$var = 'monitor';
				break;
			case 'notes':
				$var = 'notes';
				break;
			case 'id':
				$var = 'id';
				break;
			case 'form_type':
				$var = 'form_type';
				break;
		}
		$$var = $obj['value'];
	}

	if($form_type == 'c')
		$table = 'wp_community_form';
	else
		$table = 'wp_provider_form';

	$result = $wpdb->update($table, array('status' => 2), array('Community ID' => $id));

	$training = array($training_date, $training_person, $training_req);
	$training = implode('|', $training);

	if($subtype && $type && $address && $phone && $insurance != null && $training != '||' && $mf != null && $pronoun != null && $legal != null && (($type == 1 && $monitor != null) || $type != 1))
		$status = 1;
	else
		$status = 2;
		

	$results = $wpdb->insert('wp_volunteer_form', array(
		'Provider Subtype' => $subtype,
		'Provider Type' => $type,
		'Provider Name' => $name,
		'Office / Clinic' => $clinic,
		'Address' => $address,
		'Phone' => $phone,
		'Email' => $email,
		'Web Address' => $url,
		'Experience' => $experience,
		'Private Ins' => $insurance,
		'Medicare' => $medicare,
		'Sliding Payments' => $sliding,
		'Gender Options' => $mf,
		'Pronouns' => $pronoun,
		'Preferred Name' => $legal,
		'Hormone Monitoring' => $monitor,
		'Comments' => $notes,
		'Awareness Training' => $training,
		'Status' => $status,
		'Date' => $date	
		)
	);
	//echo $wpdb->last_query;

	//echo $wpdb->last_error;

	// Commented out; we don't want to spam them while testing!
	if($status == 1){
		//wp_mail('admin@transponder.community', 'Submission in Admin Queue', 'There is an entry in the admin queue awaiting review.', '');
	}


?>