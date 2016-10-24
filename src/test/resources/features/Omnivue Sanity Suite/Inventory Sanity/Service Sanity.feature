Feature: Omnivue Service Sanity Check

    
  @Sanity @all
  Scenario Outline: Search & Launch Services
    Given I am logged in as a "ValidAdmin" user in Omnivue   
    When I clicked on "Search" tab
    And I Search "Inventory" in Search Tab											
    And I searched for "Service" with "<Service Type>" Service Type
    And I click on search button for "Inventory"
    Then I click on view icon in Search Result page
    
   
Examples: 
|Service Type 	|
|DSL OVC        |      
|HSI            |
|MEF ENNI       |
|MEF EVC        |
|MEF OVC        |
|MEF UNI        |      
|Host Service 	|
|IPTV           |
|IPTV Unicast 	|
|Probe UNI   		|        
    