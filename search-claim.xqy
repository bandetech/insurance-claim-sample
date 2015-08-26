xquery version "1.0-ml";

declare namespace cl="http://www.marklogic.com/sample/insurance-claim/";

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Claims</title>
<link rel="stylesheet" href="css/style.css"></link>
<link rel="stylesheet" href="css/jquery-ui.min.css"></link>
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/search-claim.js"></script>
</head>
<body>
	<div class="page-title">Search Claims</div>
	<div class="form-box">
	<ul>
	<li>
		<label for="claimId">Claim ID: </label>
		<input id="claimId" type="text" name="claimId" />
	</li>
	<li>
		<label for="policyNo">Policy No: </label>
		<input id="policyNo" type="text" name="policyNo" />
	</li>
	<li>
		<label for="lossDate">Loss Date: </label>
		<input id="lossDate" type="text" name="lossDate" />
	</li>
	<li>
		<label for="incidentPrefecture">Incident Prefecture: </label>
		<input id="incidentPrefecture" type="text" name="incidentPrefecture" />
	</li>
	<li>
		<label for="incidentCity">Incident City: </label>
		<input id="incidentCity" type="text" name="incidentCity" />
	</li>
	<li>
		<input id="search" type="submit" name="Search" />
	</li>
	</ul>
	</div>
	<div class="form-box search-result">
	<div id="searchResults"></div>
	</div>

</body>
</html>