xquery version "1.0-ml";
(: Insert New Incident :)
import module namespace sequence-lib = "http://www.marklogic.com/sample/insurance-claim/sequence" at "sequence-lib.xqy";
(: declare default element namespace "http://www.marklogic.com/sample/insurance-claim/"; :)

declare function local:createClaim(){

	(: let $claimId  := xdmp:get-request-field("claimId") :)
	let $claimId  := sequence-lib:getClaimId()
	let $policyNo := xdmp:get-request-field("policyNo")
	let $lossDate := xdmp:get-request-field("lossDate")
	let $incidentPrefecture := xdmp:get-request-field("incidentPrefecture")
	let $incidentAddr1 := xdmp:get-request-field("incidentAddr1")
	let $incidentAddr2 := xdmp:get-request-field("incidentAddr2")
	let $incidentCity := xdmp:get-request-field("incidentCity")

	let $docUrl := concat($claimId, ".xml")

	
	 return (
	 	xdmp:document-insert($docUrl, 
		<insuranceClaim xmlns="http://www.marklogic.com/sample/insurance-claim/">
			<claimId>{$claimId}</claimId>
			<policyNo>{$policyNo}</policyNo>
			<incident>
				<lossDate>{$lossDate}</lossDate>
				<incidentPrefecture>{$incidentPrefecture}</incidentPrefecture>
				<incidentCity>{$incidentCity}</incidentCity>
				<incidentAddr1>{$incidentAddr1}</incidentAddr1>
				<incidentAddr2>{$incidentAddr2}</incidentAddr2>		
			</incident>
		</insuranceClaim>),
		xdmp:set-server-field("claimId", $claimId),
	 	xdmp:redirect-response("claim-created.xqy")
	 )
	
};
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Creating Issue...</title>
  </head>

  <body>
    Creating an incident...
    <p>
If you are seeing this page, either the redirect has failed
or the update has failed.  The update has failed if there is
a reason provided below:
      <br/>
      { local:createClaim() }
    </p>
  </body>
</html>