Feature: Omnivue Location Sanity Check

@Sanity @all
  Scenario: Verify Location 360 view is displayed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab   
    And I go to "Inventory" Search type and select "Location" as Inventory type
    And I Search for sample Street Name as "TEST"
    And I click on search button for "Inventory"    
    Then I click on view icon in Search Result page    