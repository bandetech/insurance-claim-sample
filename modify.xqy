xquery version "1.0-ml";

declare default element namespace "http://www.marklogic.com/sample/insurance-claim/";

declare function local:modifyClaim(){
	let $claimId  := xdmp:get-request-field("claimId")
	let $policyNo := xdmp:get-request-field("policyNo")

	let $lossDate := xdmp:get-request-field("lossDate")
	let $incidentPrefecture := xdmp:get-request-field("incidentPrefecture")
	let $incidentAddr1 := xdmp:get-request-field("incidentAddr1")
	let $incidentAddr2 := xdmp:get-request-field("incidentAddr2")
	let $incidentCity := xdmp:get-request-field("incidentCity")
	let $docUrl := concat($claimId, ".xml")
	let $modifiedIncident := 
			<incident>
				<lossDate>{$lossDate}</lossDate>
				<incidentPrefecture>{$incidentPrefecture}</incidentPrefecture>
				<incidentCity>{$incidentCity}</incidentCity>
				<incidentAddr1>{$incidentAddr1}</incidentAddr1>
				<incidentAddr2>{$incidentAddr2}</incidentAddr2>		
			</incident>

	return (
	 	xdmp:node-replace(doc($docUrl)//incident, $modifiedIncident),
	 	xdmp:redirect-response("claim-modified.xqy")
	 )
};

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Modifying Issue...</title>
  </head>

  <body>
    Modifying an incident...
    <p>
If you are seeing this page, either the redirect has failed
or the update has failed.  The update has failed if there is
a reason provided below:
      <br/>
      { local:modifyClaim() }
    </p>
  </body>
</html>