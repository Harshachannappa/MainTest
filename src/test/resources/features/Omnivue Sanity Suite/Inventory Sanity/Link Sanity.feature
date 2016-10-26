Feature: Omnivue Link Sanity Check

 @Sanity @all @test56
  Scenario: Verify Fiber Link 360 view is displayed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I go to "Inventory" Search type and select "Link" as Inventory type
    And I select Link type as "Fiber"    
    And I click on search button for "Inventory"    
    Then I click on view icon in Search Result page   