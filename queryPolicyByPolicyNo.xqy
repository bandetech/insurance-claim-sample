xquery version "1.0-ml";
(: declare default element namespace "http://www.marklogic.com/sample/insurance-policy/"; :)

declare default element namespace "http://www.marklogic.com/sample/insurance-policy/";

let $policyNo := xdmp:get-request-field("policyNo")
let $policyXml := //policy[policyNo=$policyNo]

return (
	xdmp:set-response-content-type("application/xml"),
	if(empty($policyXml)) then (
		xdmp:set-response-code(500, "No Policy record found.")
	)
	else
		$policyXml
)