Feature: CR4701 GPON Device Build Ehancements
	As an inventory user, I need the OV GPON device build enhanced so that I can input an infrastructure build in 20 minutes or less. 


####################################################################################################################################

#US68557---CR4701 GPON OLT Edit screen issues


@US68557 @TC75816
Scenario: OV-Validate Max Subscriber Bandwidth field is mandatory and editable for edit OLT device
Given I am logged in as a "ValidAdmin" user in Omnivue 
    When I clicked on "Search" tab
     And I searched for "GPON-OLT Devie-TC75816"
      And I click on "Edit" 