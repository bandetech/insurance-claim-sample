var claimId = xdmp.getRequestField("claimId");
var policyNo = xdmp.getRequestField("policyNo");
var lossDate = xdmp.getRequestField("lossDate");
var incidentPrefecture = xdmp.getRequestField("incidentPrefecture");
var incidentCity = xdmp.getRequestField("incidentCity");

var queryCondition = new Array();
if(claimId){
	var query = cts.elementWordQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "claimId"), claimId);
	queryCondition.push(query);
}
if(policyNo){
	var query = cts.elementWordQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "policyNo"), policyNo);
	queryCondition.push(query);
}
if(lossDate){
	var query = cts.elementWordQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "lossDate"), lossDate);
	queryCondition.push(query);	
}
if(incidentPrefecture){
	var query = cts.elementWordQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "incidentPrefecture"), incidentPrefecture);
	queryCondition.push(query);	
}
if(incidentCity){
	var query = cts.elementWordQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "incidentCity"), incidentCity);
	queryCondition.push(query);	
}
xdmp.setResponseContentType("application/json");
//cts.search(cts.andQuery(queryCondition)).toArray();
cts.search(cts.elementQuery(fn.QName("http://www.marklogic.com/sample/insurance-claim/", "insuranceClaim"), cts.andQuery(queryCondition))).toArray();