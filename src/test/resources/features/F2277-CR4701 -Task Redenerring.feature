Feature: CR4701 - NIC GPON Supplement Requests to Pending Orders

 As a GPON user I need the provisioning system to receive and process supplemental requests from the ordering/billing system so that the most recent version of the customers 
 request is available for all necessary work flows and manual tasks
 

#US81430--CR4701 GPON OV has ability to determine which task rendering is occuring
@US65043 @TC83402 @all @US84417 @US48231 @TC79440
  Scenario: OV-Validate GPON MLTO Attribute Validation
    Given I am logged in as a "Adminrole" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab     
   Then I validate attributes in create form for "MLTO" 



#####################################################################################################################   

 #US80981--CR4701 GPON Task Specific Details Area from DSP