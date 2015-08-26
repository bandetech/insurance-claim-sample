$(document).ready(function(){
	$('#search').click(function(){
		var args = {};

		args.claimId = $('#claimId').val();
		args.policyNo = $('#policyNo').val();
		args.lossDate = $('#lossDate').val();
		args.incidentPrefecture = $('#incidentPrefecture').val();
		args.incidentCity = $('#incidentCity').val();

		$('#searchResults').empty();
		var $table = $('<table>');
		
		var $th = $('<tr>').append('<th>Claim ID</th>');
		$th.append('<th>Policy No</th>');
		$th.append('<th>Loss Date</th>');
		$th.append('<th>Incident Prefecture</th>');
		$th.append('<th>Incident City</th>');
		$th.append('<th>Incident Address1</th>');
		$th.append('<th>Incident Address2</th>');
		$table.append($('<thead>').append($th));
		var $tbody = $('<tbody>');

		$.get('searchClaim.sjs', args,
		function(data){
			for(var i = 0, results=""; i < data.length; i++){
				var $td = $('<tr>');
				$td.append('<td>' + $(data[i]).find('claimId').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('policyNo').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('lossDate').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('incidentPrefecture').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('incidentCity').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('incidentAddr1').text() + '</td>');
				$td.append('<td>' + $(data[i]).find('incidentAddr2').text() + '</td>');
				$tbody.append($td);			
			}
			$table.append($tbody);
			$('#searchResults').append($table);
			$('.form-box').css('visibility', 'visible');
		})
	});
});