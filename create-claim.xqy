xquery version "1.0-ml";
import module namespace sequence-lib = "http://www.marklogic.com/sample/insurance-claim/sequence" at "sequence-lib.xqy";

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Create an incident</title>
		<link rel="stylesheet" href="css/jquery-ui.min.css"></link>
		<link rel="stylesheet" href="css/style.css"></link>
		<script type="text/javascript" src="js/jquery/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="js/load-policy.js"></script>
	</head>
	<body>
		<div class="page-title">
			Create a claim
		</div>
		<div class="form-box">
		<form id="create-form" action="./create.xqy" method="POST">
			<ul>
				<li class="insured-info">
					Insured Info:
				</li>
				<li class="policy-no">
					<label for="policy-no">Policy No: </label>
					<input id="policy-no" type="text" name="policyNo"/>
				</li>
				<li class="firstName">
					<label for="firstName">First Name: </label>
					<input id="firstName" disabled="disabled" type="text" name="firstName"/>
				</li>
				<li class="lastName">
					<label for="lastName">Last Name: </label>
					<input id="lastName" disabled="disabled" type="text" name="lastName"/>
				</li>
				<li class="prefecture">
					<label for="prefecture">Prefecture: </label>
					<input id="prefecture" disabled="disabled" type="text" name="prefecture"/>
				</li>
				<li class="zipCode">
					<label for="zipCode">Zip Code: </label>
					<input id="zipCode" disabled="disabled" type="text" name="zipCode"/>
				</li>
				<li class="city">
					<label for="city">City: </label>
					<input id="city" disabled="disabled" type="text" name="city"/>
				</li>
				<li class="address1">
					<label for="address1">Address 1: </label>
					<input id="address1" disabled="disabled" type="text" name="addr1"/>
				</li>
				<li class="address2">
					<label for="address2">Address 2: </label>
					<input id="address2" disabled="disabled" type="text" name="addr2"/>
				</li>
				<li class="incident-location">
					Incident Location:
				</li>
				<li class="lossDate">
					<label for="lossDate">Loss Date: </label>
					<input id="lossDate" type="text" name="lossDate" disabled="disabled" required="required" />
				</li>
				<li class="incidentPrefecture">
					<label for="incidentPrefecture">Prefecture: </label>
					<input id="incidentPrefecture" type="text" name="incidentPrefecture" disabled="disabled" required="required" />
				</li>
				<li class="incidentCity">
					<label for="incidentCity">City: </label>
					<input id="incidentCity" type="text" name="incidentCity" disabled="disabled" required="required" />
				</li>
				<li class="incidentAddr1">
					<label for="incidentAddr1">Address 1: </label>
					<input id="incidentAddr1" type="text" name="incidentAddr1" disabled="disabled" required="required" />
				</li>
				<li class="icncidentAddr2">
					<label for="incidentAddr2">Address 2: </label>
					<input id="incidentAddr2" type="text" disabled="disabled" name="incidentAddr2"/>	
				</li>
				<li class="button">
					<input id="button" type="submit" value="Create Incident"/>
				</li>
			</ul>
	    </form>
	    </div>
	</body>
</html>