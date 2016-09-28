Feature: F2241-GPON DSL OVC Inventory Enhancements

#US33620-Display GPON DSL OVCs Associated to Device
@TC18903_TC18905 @RegDemo
   Scenario: Validate OLT Devices display MEF EVC for HSI
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Search" tab   
    And I Search for the "OLT-MEF EVC" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Services" tab
    Then validate the service type as "MEF EVC" when service capability types as "HSI" & "HSI + IPTV Unicast"
   
    
  
@TC18883_TC18902  @RegDemo
   Scenario: Validate OLT Devices display DSL OVC for HSI
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab 
    And I Search for the "OLT-DSL OVC" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Services" tab
    Then validate the service type as "DSL OVC" when service capability types as "IPTV-UNICAST" & "IPTV-DATA"
    
#DSLOVC-Test1-OLTDS301-OLT-103683
#DSLOVC-Test3-LTTOCOEL-01CAB01A


@TC19275 
  Scenario: Validate Refresh functionality of OLT Devices under Service tab
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab
    And I Search for the "Refreshdata" data from Search Tab
   	And I click on search button for "Inventory"
     And I click on view icon of Search Result page
     And I verified view page and clicked on "Services" tab    
    And I modify the service name from 77/L1XX/785391//CTQF to 77/L1XX/785391//ADCD
    And I do Refresh      
    Then I should see the updated Associated service name 
   
    
 
@TC19068 @RegDemo
Scenario: Validate OLT Devices with No service
    Given I am in omnivue url
    When I log in as a "Admin" user  
    And I clicked on "Search" tab 
    And I Search for the "OLT-No Service" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Services" tab
    Then validate the Service Tab

    
########################################################################################################################
#US31642-GPON SVLAN C Tag Pool Display, Create and Update and C Tag Status Display
  @US31642-TC20884 @reg32
  Scenario: Validate single range of C Tag pool 1-4095 for DSL OVC service with Ethernet-HSI usage type
    Given I am in omnivue url
    When I log in as a "Admin" user   
    And I clicked on "Search" tab 
    And I Search for the "DSL OVC Data" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "CTag" tab
    And Add the CTag range "Less than 1"
    And Add the CTag range "Greater than 4095"
    And Add the CTag range "Alphanumeric values"
    Then Add the CTag range "Single Range 1-4095"    

#DSL OVC-TEST1-LEHIUTMA03W.3122
#DSL OVC-TEST3-CNBLIAWA02W.2839_2.24  

	@US31642-TC20897-TC20901 @reg33 @TC86316 @RegDemo
  Scenario: Validate C Tag Pool multiple ranges can be edited on a non activated subscribers or Pending orders
    Given I am in omnivue url
    When I log in as a "Admin" user  
    And I clicked on "Search" tab
    And I Search for the "DSL OVC Data" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "CTag" tab
    And Add the CTag range "Multiple Range between 1-4095" 
    Then Add the CTag range "Overlapping the CTag range"    

    @US31642-TC20902 @reg34 @TC86318 
  Scenario: Validate C Tag Pool support single number range for DSL OVC service
    Given I am in omnivue url
    When I log in as a "Admin" user    
    And I clicked on "Search" tab
    And I Search for the "DSL OVC Data" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "CTag" tab
    Then Add the CTag range "Single Number Range"     
 
		@US31642-TC21874 @reg34 @TC86317 
  	Scenario: Modifying the existing CTag Pool range values for DSL OVC of any service
  	 Given I am in omnivue url
    When I log in as a "Admin" user  
    And I clicked on "Search" tab
    And I Search for the "DSL OVC Data" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "CTag" tab
    Then Add the CTag range "Modify the Ctag Range"     