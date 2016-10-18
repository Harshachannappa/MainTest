
Feature: Omnivue Service Area Sanity Check

 @Sanity
  Scenario: Verify Location 360 view is displayed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I go to "Inventory" Search type and select "Service Area" as Inventory type    
    And I enter Service Area Name as "PANDA"
   And I click on search button for "Inventory"    
    Then I click on view icon of Search Result page    