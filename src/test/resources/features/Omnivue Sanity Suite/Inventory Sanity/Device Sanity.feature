Feature: Omnivue Sanity Check Device
	
	  @Sanity
  Scenario Outline: OV-Validating Search Device Screen based on technology type
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab
    And I searched for <Container>
    And I click on search button for "Inventory"
    Then I click on view icon of Search Result page
        
    Examples: 
    |Container							|
    |GPON-Sanity search			|
    |Ethernet-Sanity search	|
    |Passive-Sanity search	|
    
	
	
@Sanity1
Scenario: Omnivue sanity check for Creating GPON device
Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab   
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "GPON" technology and device type
    And Select the technology as "GPON" with Device Type as "ADTRAN Total Access 5000" with Sub-Type as "ADTRAN Total Access 5000 19 Inch Chassis"       
    Then I fill the mandatory fields with "US51414-TC37479" data
    
      #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920

@Sanity1
Scenario: Omnivue sanity check for Creating Passive device
Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab    
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "PASSIVE" technology and device type
    And Select the technology as "PASSIVE" with Device Type as "Fiber Distribution Hub" with Sub-Type as "Generic FDH 144"
    Then I fill the mandatory fields with "US51414-TC37684" data
    
      #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    
@Sanity1
Scenario: Omnivue sanity check for Creating Ethernet device
Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab    
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
     And I validated "ETHERNET" technology and device type
    And Select the technology as "ETHERNET" with Device Type as "Calix C Series" with Sub-Type as "Calix C7"
    And Select subscriber & Equipment role with "US51414-TC37705" data
    Then I fill the mandatory fields with "US51414-TC37705" data
    
      #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920