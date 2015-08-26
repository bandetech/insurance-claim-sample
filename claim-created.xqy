xdmp:set-response-content-type("text/html"),
('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="utf-8">
	<head>
		<title>Claim Created</title>
	</head>
	<body>
		A claim has been created with claim ID: {xdmp:get-server-field("claimId")}
		<div id="return-to-home">
			<a href="index.html">Returned to Main Page</a>
		</div>  
	</body>
</html>)