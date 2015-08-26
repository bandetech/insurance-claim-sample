xquery version "1.0-ml";
(: declare default element namespace "http://www.marklogic.com/sample/insurance-policy/"; :)
declare namespace pcy="http://www.marklogic.com/sample/insurance-policy/";



declare function local:suggestPolicyNo($pNo as xs:string) as xs:string*{
  let $policies := //pcy:policyNo/text()

  for $p in $policies
  where fn:contains($p, $pNo)
  return $p
};
let $policyNo := xdmp:get-request-field("policyNo")
let $result := local:suggestPolicyNo($policyNo)
return (
	xdmp:set-response-content-type("application/json"),
	if(empty($result)) then ()
	else
		json:to-array($result)
)

