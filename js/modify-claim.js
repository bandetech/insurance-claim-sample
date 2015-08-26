$(document).ready(function(){
	var arg = {}
	arg.policyNo = $(this).val();
	$.get('queryPolicyByPolicyNo.xqy', arg,
		function(data){
			var policy = $(data).children();
			$('#firstName').val(policy.children('firstName').text());
			$('#lastName').val(policy.children('lastName').text());
			$('#zipCode').val(policy.children('zipCode').text());
			$('#prefecture').val(policy.children('prefecture').text());
			$('#city').val(policy.children('city').text());
			$('#address1').val(policy.children('addr1').text());
			$('#address2').val(policy.children('addr2').text());
		})
});