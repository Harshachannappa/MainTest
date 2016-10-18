Feature: F6277-US62403-New OV Order Search is not returning search results for GPON orders

@US62403-TC54941-TC54947-TC54962-TC55177 @RegDemo
Scenario Outline: Validate OV order search return results for GPON using CSOF Order Id
Given I am in omnivue url
When I log in as a "Admin" user
And I clicked on "Search" tab
And I Search for <Orders> in Search Tab
And I click on search button for "Orders"
And I click on view icon of Search Result page
Then Validate attributes in order details page
And Log out from OMNIVue
			Examples:
    	| Orders 						|
    	| CSOF Order ID 		|
    	| Ensemble Order ID |
    	| TN 								|
   	 	| Customer Name 		|
    	#| GPON Order 				|

#Test 1 Data: CSOF ID-612116
#Test 1 Data: Ensemble Order ID -1362242592
#Test 1 Data: TN-1000005133
#Test 1 Data: Customer Name-TEST, VIJAY

#Test 3 Data: CSOF ID-568014
#Test 3 Data: Ensemble Order ID -1337006432
#Test 3 Data: TN-1000007319
#Test 3 Data: Customer Name-TEST, VIJAY


@US62403-TC55494 @RegDemo
Scenario: Validate OV order search return results for GPON using DTN in Advanced search
Given I am in omnivue url
When I log in as a "Admin" user
And I clicked on "Search" tab
And I Search for the "GPON Order" data from Search Tab
And I clicked on Advance Search for "Orders"
And I Search order with DTN
And I click on search button for "Orders"
And I click on view icon of Search Result page
Then Validate attributes in order details page
And Log out from OMNIVue

#Test 1 Data: TN-1000005133
#Test 3 Data: TN-1000007319