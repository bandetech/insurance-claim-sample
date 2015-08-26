xquery version "1.0-ml";

module namespace sequence-lib = "http://www.marklogic.com/sample/insurance-claim/sequence";

declare function sequence-lib:getClaimId() as xs:integer{
  let $current := doc()//insurance-sequences/claimId/text()
  let $next := xs:integer($current)+1
  return (xdmp:node-replace(doc()/insurance-sequences/claimId,
            <claimId>{ $next }</claimId>),
  $current)
};
