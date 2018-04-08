jQuery(document).ready(function(){
	jQuery(document).on('change', '#prov_type', function(){
		var subtype = jQuery('#prov_t').val();
		jQuery.ajax({
			type: 'POST',
			url: '../wp-content/plugins/hack-4-cause/subtype.php',
			data: {sub: subtype},
			dataType: 'html',
			success: function(resp){
				jQuery('#prov_stype').html(resp);
			}
		});
		
	});


	jQuery(document).on('click', '.provider_submit', function(){
		var provider = jQuery('#provider').serializeArray();
		jQuery.ajax({
			type: 'POST',
			url: '../wp-content/plugins/hack-4-cause/save_client.php',
			data: {data: provider},
			dataType: 'html',
			success: function(resp){
				window.location.replace('http://198.27.74.185/~transponder/submission-successful/');
			}
		});
	});

	jQuery(document).on('click', '.volunteer_submit', function(){
		var provider = jQuery('#volunteer').serializeArray();
		jQuery.ajax({
			type: 'POST',
			url: '../wp-content/plugins/hack-4-cause/save_volunteer.php',
			data: {data: provider},
			dataType: 'html',
			success: function(resp){
				window.location.replace('http://198.27.74.185/~transponder/volunteer-queue/');
				//console.log(resp);
			}
		});
	});

	jQuery(document).on('click', '.admin_submit', function(){
		var provider = jQuery('#volunteer').serializeArray();
		jQuery.ajax({
			type: 'POST',
			url: '../wp-content/plugins/hack-4-cause/save_admin.php',
			data: {data: provider},
			dataType: 'html',
			success: function(resp){
				window.location.replace('http://198.27.74.185/~transponder/admin-queue/');
				//console.log(resp);
			}
		});
	});

	jQuery(document).on('change', '#private', function(){
		if(jQuery('#private').val() == 1)
			jQuery('#private_text').html('Private Insurance: <input type="text" name="private_ins"></input>');
		else
			jQuery('#private_text').empty();
	});

	jQuery(document).on('change', '#sliding', function(){
		if(jQuery('#sliding').val() == 1)
			jQuery('#sliding_text').html('Sliding Scale Info: <input type="text" name="sliding"></input>');
		else
			jQuery('#sliding_text').empty();
	});

	jQuery(document).on('change', '#training', function(){
		if(jQuery('#training').val() == 1)
			jQuery('#training_text').html('When was the training? Month/Year <input type="text" name="train_date"></input><br>Who delivered it? Person or organization <input type="text" name="train_person"></input>			<br>Who was required to take this training? <input type="text" name="train_req"></input>');
		else
			jQuery('#training_text').empty();
	});

	jQuery(document).on('change', '#mf', function(){
		if(jQuery('#mf').val() == 1)
			jQuery('#mf_text').html('Which options? <input type="text" name="mf_options"></input>');
		else
			jQuery('#mf_text').empty();
	});

	jQuery(document).on('change', '.pt', function(){
		if(jQuery('#prov_t').val() == 1)
			jQuery('#hormones').html('Can the provider monitor hormones? <select name="monitor"><option value="0">No</option><option value="1">Yes</option></select>');
		else
			jQuery('#hormones').empty();
	});
});
