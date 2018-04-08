<?php
	//require_once(__DIR__ . '/../../wp-load.php');
	global $wpdb;
	global $wp_roles;

	$current_user = wp_get_current_user();
	$roles = $current_user->roles;

	if($roles[0] != 'administrator'){
    		echo('You are not allowed to access this file.');
	}
	else{
		$type = $_GET['type'];
		$id = $_GET['id'];
		if($type == 'v')
			$table = 'wp_volunteer_form';

		$entry = $wpdb->get_results("SELECT * FROM {$table} WHERE `Volunteer ID` = '{$id}'");
		if(!$entry){
			echo 'Not a valid record number.';
		}
		else{
		?>
			<form id="volunteer" name="volunteer_form">
			<input type="text" name="id" value="<?= $_GET['id'] ?>" hidden="hidden"></input>
			<input type="text" name="form_type" value="<?= $_GET['type'] ?>" hidden="hidden"></input>
			<div id="prov_type">Provider Type<select id="prov_t" class="pt" name="type">
		<?php
			$provider = $wpdb->get_results("SELECT * FROM wp_provider_type");
			foreach($provider as $prov){
				$selected = 0;
				if($prov->{'Provider ID'} == $entry[0]->{'Provider Category'})
					$selected = 1;
				echo '<option ';
				if($selected)
					echo 'selected="selected" ';
				echo 'value="' . $prov->{'Provider ID'} . '">' . $prov->{'Type'} . '</option>';
			}
			echo '</select>';
		}
		?>
		</div>
		<div id="prov_stype">Provider Subtype<select id="prov_st" name="stype">
		<?php
			$provider = $wpdb->get_results("SELECT * FROM wp_provider_subtype WHERE Provider_ID = '{$entry[0]->{'Provider Type'}}'");
			foreach($provider as $prov){
				$selected = 0;
				if($prov->{'Subtype_ID'} == $entry[0]->{'Provider Subtype'})
					$selected = 1;
				echo '<option ';
				if($selected)
					echo 'selected="selected" ';
				echo 'value="' . $prov->{'Subtype_ID'} . '">' . $prov->{'Subtype Name'} . '</option>';
			}
			echo '</select>';
		?>
		</div>
		Provider Name: <input type="text" name="name" value="<?= $entry[0]->{'Provider Name'} ?>"><br>
		Clinic Name (if applicable): <input type="text" name="clinic" value="<?= $entry[0]->{'Office / Clinic'} ?>"><br>
		Provider Address: <input type="text" name="address" value="<?= $entry[0]->{'Address'} ?>"><br>
		Phone Number: <input type="text" name="phone" value="<?= $entry[0]->{'Phone'} ?>">
		E-mail: <input type="text" name="email" value="<?= $entry[0]->{'Email'} ?>">
		Web Address: <input type="text" name="url" value="<?= $entry[0]->{'Web Address'} ?>"><br>
		Have you worked with Trans/Gender Diverse patients/clients before? <select name="experience">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Experience'} != 0 && $entry[0]->{'Experience'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>
		<br>Does this provider take private insurance? <select name="insurance" id="private">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Private Ins'} != 0 && $entry[0]->{'Private Ins'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>
		
		<div id="private_text">
		<?php
			if($entry[0]->{'Private Insurance'})
				echo 'Private Insurance: <input type="text" name="private_ins" value="' . $entry[0]->{'Private Insurance'} . '"></input>';
		?>
		</div>
		Does the provider take medicare? <select name="medicare">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Medicare'} != 0 && $entry[0]->{'Medicare'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>

		<br>Does this provider offer sliding scale options? <select id="sliding" name="sliding">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Sliding Payments'} != 0 && $entry[0]->{'Sliding Payments'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>
		<div id="sliding_text">
		<?php
			if($entry[0]->{'Sliding Payments'})
				echo 'Sliding Scale Information: <input type="text" name="sliding" value="' . $entry[0]->{'Sliding Payments'} . '"></input>';
		?>
		</div>
		Has staff received Trans/Gender Diversity Awareness training? <select name="training" id="training">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Awareness Training'} != 0 && $entry[0]->{'Awareness Training'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>
		<div id="training_text">
		</div>

		Does the paperwork include options more than M/F? <select name="mf" id="mf">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'mf'} != 0 && $entry[0]->{'Gender Options'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>
		<div id="mf_text">
		</div>

		Does the intake ask for a pronoun? <select name="pronoun">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Pronouns'} != 0 && $entry[0]->{'Pronouns'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>

		<br>Does the intake ask for a preferred name? (vs legal name) <select name="legal">
		<option value="0">No</option>
		<option value="1" <?= ($entry[0]->{'Legal'} != 0 && $entry[0]->{'Legal'} != null) ? 'selected="selected"' : ' '?>>Yes</option></select>

		<div id="hormones">
		<?php
			if($entry[0]->{'Provider Category'} == 1){
				echo 'Can the provider monitor hormones? <select name="monitor"><option value="0">No</option><option value="1"';
				if($entry[0]->{'Hormones'} != 0 && $entry[0]->{'Hormones'} != null)
					echo "selected='selected'";
				echo '>Yes</option></select>';
			}
		?>
		</div>
	
		Volunteer Notes: <input type="text" name="notes" value="<?= $entry[0]->{'Comments'} ?>"></input>
		Admin Notes: <input type="text" name="admin_notes" value="<?= $entry[0]->{'admin_notes'} ?>"></input>
		Action to take: <select name="action">
				<option value="pub">Publish</option>
				<option value="follow">Volunteer Followup</option>
				<option value="archive">Archive</option>
				</select>
		<?php
	}

?>
</form>
<button class="admin_submit">Submit</button>
