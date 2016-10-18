Feature: Omnivue Service Sanity Check

 @Sanity
  Scenario Outline: OV-Validating Search Services based on Service types
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab
    And I searched for <Container>
    And I click on search button for "Inventory"
    Then I click on view icon of Search Result page
        
    Examples: 
    |Container							|
    |DSL OVC-Sanity search	|
    |HSI-Sanity search			|
    |MEF EVC-Sanity search	|
    |MEF ENNI-Sanity search	|