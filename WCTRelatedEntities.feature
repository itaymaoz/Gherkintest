Scenario: AE submitting WC application for a company that is related to other prospective companies or existing customers

Rule: All related entities must be indicated on the submission of all corresponding related entities

Given An AE is submitting a WC application for a prospective customer or customer that they know is related to an existing company
When they submit their application to underwriting
Then the Underwriting team should be able to see:
		- That there is a related entity
		- The name of each related entity
		- A link/lookup to any related customers that exist in Salesforce
		- The CID of any related accounts
		- EIN if possible for any existing customers
