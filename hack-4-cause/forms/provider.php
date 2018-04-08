<?php

	echo '<script src="https://www.google.com/recaptcha/api.js" async defer></script>';
	global $wpdb;
	$provider = $wpdb->get_results("SELECT * FROM wp_provider_type");
?>

<style>
.provider_submit {
    background-color: #fafafa; 
    border: none;
    color: #868686;
    padding: 28px 38px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 32px;
	border-radius: 12px;
}

.provider_submit:hover {
	background-color:#868686;
	color: #fafafa;
}

</style>

<form id="provider" name="provider_form">
<div id="prov_type">Select Provider Type<select id="prov_t" name="type"><option>Choose One</option>
<?php
	foreach($provider as $prov){
		echo '<option value="' . $prov->{'Provider ID'} . '">' . $prov->{'Type'} . '</option>';
	}

?>
</select></div><br>

<div id="prov_stype"></div><br>
Provider Name: <input type="text" name="name"><br><br>
Clinic Name (if applicable): <input type="text" name="clinic"><br><br>
Provider Address: <input type="text" name="address"><br><br>
Phone Number: <input type="text" name="phone"><br><br>
E-mail: <input type="text" name="email"><br><br>
Web Address: <input type="text" name="url"><br><br>
Your Feedback: <input type="text" name="feedback" value="What would you like us to know about this provider?"><br><br>
Additional Comments: <input type="text" name="comments"><br><br>
Rate Your Experience: <select id="rate" name="rate"><br>
<option value="1">1 (Terrible)</option>
<option value="2">2 (Bad)</option>
<option value="2">3 (Average)</option>
<option value="2">4 (Good)</option>
<option value="2">5 (Excellent)</option>
</select>
<!-- <div class="g-recaptcha" data-sitekey="6LcJylEUAAAAALk9sFbekkbVz7mdWXaEi5UOVRpN"></div> -->
</form>
<br>
<button class="provider_submit">Submit</button>
