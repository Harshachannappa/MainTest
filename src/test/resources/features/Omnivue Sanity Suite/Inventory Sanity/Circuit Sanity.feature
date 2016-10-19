Feature: Omnivue Circuit Sanity Check
    
   @Sanity @all
  Scenario Outline: Verify Circuit 360 view is displayed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I go to "Inventory" Search type and select "Circuit" as Inventory type
    And I select Circuit type as "<Circuit types>"   
    And I click on search button for "Inventory"    
    Then I click on view icon in Search Result page   
    
 Examples: 
   |Circuit types							|
   |Ethernet Bearer						|
   |LAG												|
   |Optical Bearer						|
   |PON												|
   |PW Unrouted (Path					|
   |Topology Virtual Circuit	|
   |Transport Path						|
   |VLAN Segment							|