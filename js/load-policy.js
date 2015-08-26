$(document).ready(function(){
	$('#create-form').submit(function(){
		var checkSubmit = true;
		var lossDate = $('#lossDate').val();
		var incidentPrefecture = $('incidentPrefecture').val();
		var incidentCity = $('incidentCity').val();
		var incidentAddr1 = $('incidentAddr1').val();
		var incidentAddr2 = $('incidentAddr2').val();
		if(lossDate == ""){
			checkSubmit = false;
		}
		if(incidentPrefecture == ""){
			checkSubmit = false;
		}
		if(incidentCity == ""){
			checkSubmit = false;
		}
		if(incidentAddr1 == ""){
			checkSubmit = false;
		}

		return checkSubmit;
	});
	$('#policy-no').autocomplete({
		source: function(req, resp){
			$.ajax({
				url: "/autocomplete-datasource.xqy",
				type: "GET",
				cache: false,
				dataType: "json",
				data: {
					policyNo: req.term
				},
				success: function(data){
					console.log("autocomlete result returned.")
					resp(data);
				},
				error: function(xhr, ts, err){
					resp(['']);
				}
			});
		}
	});

	$('#policy-no').change(function(){
		var arg = {}
		arg.policyNo = $(this).val();
		$.ajax({
			url: "/queryPolicyByPolicyNo.xqy",
			type: "GET",
			cache: false,
			dataType: "xml",
			data: {
				policyNo : arg.policyNo
			},
			success: function(data){
				var policy = $(data).children();
				$('#firstName').val(policy.children('firstName').text());
				$('#lastName').val(policy.children('lastName').text());
				$('#zipCode').val(policy.children('zipCode').text());
				$('#prefecture').val(policy.children('prefecture').text());
				$('#city').val(policy.children('city').text());
				$('#address1').val(policy.children('addr1').text());
				$('#address2').val(policy.children('addr2').text());
				$('#lossDate').removeAttr("disabled");
				$('#incidentPrefecture').removeAttr("disabled");
				$('#incidentCity').removeAttr("disabled");
				$('#incidentAddr1').removeAttr("disabled");
				$('#incidentAddr2').removeAttr("disabled");
				$('#lossDate').focus();
			},
			error: function(xhr, ts, error){
				$('#policy-no').focus();
				alert("No Policy Found.");
				//$('#warning-policy-no').append("No Policy Found.");
			}
		});

	});
	$.datepicker.setDefaults($.datepicker.regional["ja"]);
	$('#lossDate').datepicker();
});