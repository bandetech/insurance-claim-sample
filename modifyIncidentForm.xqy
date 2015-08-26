xquery version "1.0-ml";

(: modifyIncidentForm.xqy 
   Create a form for updating insurance claim.
:)

declare namespace cl="http://www.marklogic.com/sample/insurance-claim/";
declare namespace pcy="http://www.marklogic.com/sample/insurance-policy/";


<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Loading Modify Form...</title>
    <link rel="stylesheet" href="css/style.css" ></link>
  </head>

  <body>
      { 
      	let $claimId := xdmp:get-request-field("claimId")
		let $docUrl := concat($claimId, ".xml")
		let $doc := doc($docUrl)

      	return

      		if(fn:exists(fn:document-uri($doc))) then
      			let $claim := $doc/cl:insuranceClaim
      			let $policy := //pcy:policy[pcy:policyNo=$claim/cl:policyNo/text()]
      			return

				<form action="./modify.xqy" method="GET">
				<ul>
					<li class="insured-info">Insured Info:</li>
					<div class="form-box">
					<div class="form-left-box">
					<li class="claim-number">
						<label for="claim-number">Claim ID: </label>
						<p> {$claim/cl:claimId/text()} </p>
						<input id="claimId" type="hidden" name="claimId" value="{$claim/cl:claimId/text()}" />
						<input id="policyNo" type="hidden" name="policyNo" value="{$claim/cl:policyNo/text()}" />
					</li>
					<li class="firstName">
						<label for="firstName">First Name: </label>
						<p>{$policy/pcy:firstName/text()}</p>
					</li>
					<li class="lastName">
						<label for="lastName">Last Name: </label>
						<p>{$policy/pcy:lastName/text()}</p>
					</li>
					</div>
					<div class="form-right-box">
					<li class="prefecture">
						<label for="prefecture">Prefecture: </label>
						<p>{$policy/pcy:prefecture/text()}</p>
					</li>
					<li class="city">
						<label for="city">City: </label>
						<p>{$policy/pcy:city/text()}</p>
					</li>
					<li class="addr1">
						<label for="addr1">Address 1: </label>
						<p>{$policy/pcy:addr1/text()}</p>
					</li>
					<li class="addr2">
						<label for="addr2">Address 2: </label>
						<p>{$policy/pcy:addr2/text()}</p>
					</li>
					</div>
					</div>
					<li class="incidentInfo">
						Incident Info:
					</li>
					<div class="form-box">
					<li class="lossDate">
						<label for="lossDate">Loss Date: </label>
						<input id="lossDate" type="text" name="lossDate" value="{$claim/cl:incident/cl:lossDate/text()}"/>
					</li>
					<li class="incidentPrefecture">
						<label for="incidentPrefecture">Prefecture: </label>
						<input id="incidentPrefecture" type="text" name="incidentPrefecture" value="{$claim/cl:incident/cl:incidentPrefecture/text()}"/>
					</li>
					<li class="incidentCity">
						<label for="incidentCity">City: </label>
						<input id="incidentCity" type="text" name="incidentCity" value="{$claim/cl:incident/cl:incidentCity/text()}"/>
					</li>
					<li class="incidentAddr1">
						<label for="incidentAddr1">Address 1: </label>
						<input id="incidentAddr1" type="text" name="incidentAddr1" value="{$claim/cl:incident/cl:incidentAddr1/text()}"/>
					</li>
					<li class="incidentAddr2">
						<label for="incidentAddr2">Address 2: </label>
						<input id="incidentAddr2" type="text" name="incidentAddr2" value="{$claim/cl:incident/cl:incidentAddr2/text()}"/>
					</li>
					<li class="button">
						<input type="submit" value="Modify Incident"/>
					</li>

					</div>
				</ul>
		    	</form>
      		else (

      			<p>No Claim found.</p>,
      			<a href="javascript:history.back()">Back to previous page</a>,
      			<br/>,
      			<a href="/index.html">Return to Top</a>
      		)
      }
  </body>
</html>