Feature: CR4701 GPON Market Launch Test Orders (MLTO) JulyUS65043

#US65043--CR4701 GPON MLTO uses DSP provisioning flow for MLTO and HSI (HSI+PRISM)

@US65043 @TC83402 
  Scenario: OV-Validate GPON MLTO Attribute Validation
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab     
   Then I validate attributes in create form for "MLTO" 
  
  @US65043 @TC83402 @Testred
  Scenario: OV-Validate GPON MLTO Attribute Validation
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab
    And I fill all the fields in Order with "HSI-MLTO data" 
  