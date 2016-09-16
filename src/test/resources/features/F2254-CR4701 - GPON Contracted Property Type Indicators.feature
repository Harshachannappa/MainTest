Feature: GPON Contracted Property Type Indicators

  @US48525 @TC53733 
  Scenario: OV - Verify creating the individual address with multiple values of Century link contracted property attribute
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I go to "Inventory" type and select "Location"
    And I select "Individual Location" location type
    And I fill the mandatory fields with "US48525-TC53733" data
    Then Validate attributes in "Location" Search page
    And Log out from OMNIVue

    #US48525-TC53733------can we have edit seperate validation