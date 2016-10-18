Feature: F2262-CR4701-US40860-CR4701-Enhance ICL Device_Compatbility table to accept Passive technology
  
  
  @US43123-TC24409 @RegDemo @TEST10
  Scenario Outline: OV- Validating atributes of Create Device Screen on Passive Devices.
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "PASSIVE" technology and device type    
    And Select Device Type as <Device> with Sub-Type as <Subtype>   
    Then Fill all the mandatory fields with <Data> data
       
     Examples: 
      | Device                           | Subtype               |Data							|
      | Fiber Distribution Hub           | Generic FDH 144       |US43123-TC24409-1	|
      | Fiber Distribution Panel         | Generic FDP 12:12     |US43123-TC24409-2	|
      | Fiber Multiport Service Terminal | Generic MST 24:24     |US43123-TC24409-3	|
      | Fiber Splitter                   | Generic Splitter 1:32 |US43123-TC24409-4	|
    #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
      
  @US43123-TC24975 @RegDemo
  Scenario Outline: OV-Validating Search Device Screen based on Passive technology type
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab
    And I searched for <Container>
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And Validate attributes in "PASSIVE" Search page
    Then Validate the device name in search page
    
    Examples: 
    |Container|
    |MST			|
    |FDP			|
    |Splitter	|
    
    
    #Test-1 Data-MST-BLCYNVTSGDB-MST-28---Need to be created
    #Test-1 Data-FDP-DSLOVC44001-010101.01A---Need to be created
    #Test-1 Data-Splitter-FOROURTEST-OFS-1
    
    #Test-3 Data-MST-BLCYNVXFOSP-MST-4
    #Test-3 Data-FDP-BLCYNVXFOSP-FDP72
    #Test-3 Data-Splitter-LSVGNVXH89W-OFS-1
    
     @US43123-TC25113 @RegDemo
  Scenario: OV- Validating atributes of Create Device Screen on Passive Devices.
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"   
    And I Select "Role" as Filter By value
    And Select the Role as "MST" with Device Type as "Fiber Multiport Service Terminal" with Sub-Type as "Generic MST 2:2"
    And I validated "PASSIVE" radio button and "All" radio button   
    And I fill the mandatory fields with "US43123-TC25113" data    
    Then Validate attributes in "PASSIVE" device details page  
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    
 ##################################################################################################################
    
    #US40867-CR4701-Enhance Splitter Naming Convention
    
    #US51414-CR4701 GPON Location CLLI is optional for device technology=GPON or Passive
    
   @US51414-TC37684 @TC86322 @RegDemo
  	Scenario: OV-Validate Location CLLI is optional on Inventory Device Create for Passive Technology
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "PASSIVE" technology and device type
    And Select the technology as "PASSIVE" with Device Type as "Fiber Distribution Hub" with Sub-Type as "Generic FDH 144"
    And Validate "PASSIVE" radio button in device create page    
    And Validate Location CLLI
    Then I fill the mandatory fields with "US51414-TC37684" data
  
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    
@US51414-TC37479 @TC86321 @RegDemo
   Scenario: OV-Validate Location CLLI is optional on Inventory Device Create for GPON Technology
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "GPON" technology and device type
    And Select the technology as "GPON" with Device Type as "ADTRAN Total Access 5000" with Sub-Type as "ADTRAN Total Access 5000 19 Inch Chassis"
    And Validate "GPON" radio button in device create page    
    And Validate Location CLLI
    Then I fill the mandatory fields with "US51414-TC37479" data    
    
     #topology Test3-TXNTW7223
    #Topology Test1-CANTW7920
    

@US51414-TC37705 @TC86323 @RegDemo
    Scenario: OV-Validate Location CLLI attribute is mandatory on Inventory Device Create for Ethernet Technology
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Technology" as Filter By value
    And I validated "ETHERNET" technology and device type
    And Select the technology as "ETHERNET" with Device Type as "Calix C Series" with Sub-Type as "Calix C7"
    And Validate "ETHERNET" radio button in device create page     
    And Validate Location CLLI
    And Select subscriber & Equipment role with "US51414-TC37705" data
    Then I fill the mandatory fields with "US51414-TC37705" data    
    