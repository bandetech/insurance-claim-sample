xdmp:set-response-content-type("text/html"),
('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8">
	<head>
		<title>Modify a Claim Incident</title>
		<link rel="stylesheet" href="css/style.css"></link>
	</head>
	<body>
		<div class="page-title">Modify Claim</div>
		<div class="form-box">
			<form action="./modifyIncidentForm.xqy" method="GET">
				<div class="claim-number">
					<label for="claim-number">Claim Number: </label>
					<input id="claim-number" type="text" name="claimId" />
				</div>
				<div class="button">	
					<input type="submit" value="Submit"/>
				</div>
	    	</form>
	    </div>
	</body>
</html>)