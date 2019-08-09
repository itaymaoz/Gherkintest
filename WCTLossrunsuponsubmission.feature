Rule: All companies that have had wc coverage must submit loss runs by the onboarding deadline immediately before the designated wc start date

Rule: All companies that have had previous WC claims must submit either loss runs or must answer a series of questions about those claims in order to begin the underwriting process. 

Scenario: AE begins WC questionnaire

Given an AE has a completed census and WC questionnaire
When the AE submits a WC application
Then the AE should prompted to answer whether or not the prospect has ever had WC coverage

Scenario: Company has had WC coverage

Given An AE is prompted to answer whether or not the prospect has ever had WC coverage
When The AE answers in the affirmative
Then the AE should be prompted to answer whether or not there have ever been any WC claims
And upon creation of the new wct, it should be indicated on the case that the company has previously been covered by WC. 

Scenario: Company has never had WC coverage

Given An AE is prompted to answer whether or not the prospect has ever had WC coverage
When The AE answers in the negative
Then a new WCT ticket should be created and clearly should be indicated on the case that the company has not previously been covered by WC. 

Scenario: Company has had WC claims 

Given an AE is  prompted to answer whether or not there have ever been any WC claims
When The AE answers in the affirmative
Then upon creation of the new wct, it should be indicated on the case that the company has had previous claims
And the AE will be prompted to upload loss runs
But If the AE does not have loss runs, they will be prompted to submit questions about each claim

Scenario: Company has never had WC claims

Given an AE is  prompted to answer whether or not there have ever been any WC claims
When The AE answers in the negative
Then A new wct should be created where it should be indicated on the case that the company has not had previous claims



