Feature: Omnivue Order Sanity Check

 @Sanity @all
  Scenario Outline: OV-Validating Order Search based on types
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab
    And I searched for "<Container>"
    And I click on search button for "Orders"
    Then I click on view icon in Search Result page
        
    Examples: 
    |Container											|
    |Ethernet Order-Sanity search		|
		|GPON Order-Sanity search				|