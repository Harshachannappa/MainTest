Feature: CR4701 - NIC GPON Supplement Requests to Pending Orders

 As a GPON user I need the provisioning system to receive and process supplemental requests from the ordering/billing system so that the most recent version of the customers 
 request is available for all necessary work flows and manual tasks
 

#US81430--CR4701 GPON OV has ability to determine which task rendering is occuring
@US81430 @TC87055 @all @TC86968
  Scenario Outline: OV-Validate the View & Edit to determine which are Autoform Task from Fallout task in Task Result Page
    Given I am logged in as a "DSPUser" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for "<GPON Task>"
     And I click on search button for "Task"
     Then I validate the View & Edit for "<Tasks>" in Task result page
         
     Examples: 
    |GPON Task							|Tasks				|
    |GPON Autoform Task			|DSP Task			|
    |GPON Fallout Task			|Fallout Task |
  
    
    #Test 1:  Manually select location autoform task--- 695926, 695935
    #Test 1: Fallout task--572522

#####################################################################################################################   

#US80936--CR4701 GPON OV consumes API For task details
 
 
   @US80936 @TC86845 @TC87046 @all 
  Scenario Outline: OV-Validate the View tasks displayed in API view in OV for GPON Autoform orders & Iframe view for GPON Fallout orders
    Given I am logged in as a "DSPUser" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for "<GPON Task>"
     And I click on search button for "Task"  
     And I click on the "<View Task>" in Task result page
     Then I Validate "<Page View>" of the Task
     
     
     Examples: 
    |GPON Task							|View Task					|Page View			|
    |GPON Autoform Task			|View DSP Task			|API View				|
    |GPON Fallout Task			|View Fallout Task	|Iframe View		|


#####################################################################################################################   
 #US80981--CR4701 GPON Task Specific Details Area from DSP
 
 
   @US80947 @TC84042 @all
  Scenario: OV-Validate the View & Edit to determine which are Autoform Task 
    Given I am logged in as a "DSPUser" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for "GPON Autoform Task"
     And I click on search button for "Task"  
     And I click on the "Edit DSP Task" in Task result page
   And I Validate "API View" of the Task
	Then I need to validate "GPON Task Specific Details Area" section for the GPON Autoform Task 

#####################################################################################################################   

 #US80981--CR4701 GPON Task Specific Details Area from DSP
 
 
   @US80981 @TC86855 @all @TC86968
  Scenario Outline: OV-Validate the View & Edit to determine which are Autoform Task 
    Given I am logged in as a "DSPUser" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for "<GPON Task>"
     And I click on search button for "Task"  
     
     
     Examples: 
    |GPON Task							|Tasks				|
    |GPON Autoform Task			|DSP Task			|
    |GPON Fallout Task			|Fallout Task |
  