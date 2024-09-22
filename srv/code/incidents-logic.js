/**
 * changeUrgencyDueToSubject 
 * @Before(event = { "CREATE","UPDATE" }, entity = "newfullstackapplicationService.Incidents")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
	// Your code here
	const incident = request.data;
	if (incident.title?.toLowerCase().includes("urgent")) {
		incident.urgency = {      
			code: "H",        
			descr: "High"        
		};
	}

}