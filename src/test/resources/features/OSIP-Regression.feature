Feature: OSIP Regression cases


  @TC44383 @RegDemo
  Scenario: OSIP-360 View Location - Individual Address_Verify Related Tab - Contacts Add Contact Button
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    Then I clicked on "Search" tab
    And I Search for the "TC44383-Location" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    When I verified view page and clicked on "Contacts" tab
    Then I validate Add contact button in contacts tab
    
    
     @TC39187 @RegDemo
  Scenario: OSIP-Verify the functionality of Create Button for create form -Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    Then I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    Then I fill the mandatory fields with "TC39187-Subscriber" data
   
    
    
    @TC39192 @RegDemo
     Scenario: Verify the functionality of Create Button for logical port
     Given I am in omnivue url
     When I log in as a "Admin" user
     And I clicked on "Create" tab
     And I go to "Inventory" type and select "Logical Port"
     And I Select Port Type as "Ethernet Bearer"
     And I click on the Launch Create form button
     Then I fill the mandatory fields with "TC39192-Logical" data
     
    # Divya Test case
   @TC39186 @RegDemo
  Scenario: Verify QoS Template EDIT button functionality
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    #And I searched for "QOS Template"
    And I click on search button for "Inventory"
    #And I clicked on search button for "Inventory"
    And I click on view icon of Search Result page
    And I should validate QOS template table
    And I click on "Edit"
    And I Update values of "QOS Template table"
    And I click on "Save"
    Then I should validate "Success" message
    
       # Divya Test case
     @TC39186-1 @RegDemo
  Scenario: Verify QoS Template EDIT button functionality-Negative Scenario
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    #And I searched for "QOS Template"
    And I click on search button for "Inventory"
    #And I clicked on search button for "Inventory"
    And I click on view icon of Search Result page
    And I should validate QOS template table
    And I click on "Edit"
    And I Update values of "Invalid-QOS Template table"
    And I click on "Save"
    Then I should validate "Error" message
    
    
    ###  AUTHOR:           Shivaprasad
    
@Regression @RegDemo
   Scenario: Validate activation tab  
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	 And I Search for the "Search Service" data from Search Tab 
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Activations" tab
    #And I verified view page and clicked on "Activations" tab
    And I clicked on expand icon of Related tab "Activations" page
   Then Validate the Activations tab with Activation data
   
   
   @Regression @reg45 @RegDemo
  Scenario: Validate fields in Create Device Screen for GPON Splitter
  Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab
	And I entered details for the "GENERIC OPTICAL SPLITTER"
	And I Select "1:8 splitter" for the drop down Device Sub Type
	And I click on Launch Create Form for "DeviceCreate"
  Then Validate fields in create device page for splitter 
	
     @Regression @reg45 @RegDemo
 Scenario: Validate Apache SOLR feature for Subscriber Name field in DSL OVC Service create screen 
    Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab
   And I entered details for the "Create service"
   And I Select "DSL OVC" for the drop down Service Type
   And I click on Launch Create Form for "ServiveCreate"
   Then Validate apacheSolr for subscriber in create device service page
   
   
   ###################################################################################
   ##							Pratim Team scripts																						######
   ##																																						######
   ##																																						######
   ##																																						######
   ###################################################################################
   
   ## Author: Dolly
   
   @TC55536 @regprathim
  Scenario: Verify the create functionality of GPON device type FDH
    Given I am logged in as a "ValidAdmin" user in Omnivue     
    When I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "FDH" with Device Type as "OFS FDH" with Sub-Type as "OFS 160 FDC"
    
    And I fill the mandatory fields with "TC55536" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page
    
     @TC55537 @regprathim
  Scenario: Verify the create functionality of GPON device type ONT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "ONT" with Device Type as "Calix 700GE Series ONT" with Sub-Type as "Calix 711GE"
    And I fill the mandatory fields with "TC55537" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the "Save" button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page
    
      @TC39203 @regprathim
  Scenario: Related Systems Devices_Verify Start and End Device tabs are displayed for an IPTV service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "BAM logs for IPTV Service" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Devices" tab
    Then I should see the start and end devices

  @TC39207 @regprathim
  Scenario: List View(QoS Template)_Verify QoS Template list view is displayed when search is performed
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "QOS Template" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I should be in the "QOS Template" list view page
    
    #author Mohit
    
    @TC39221 @regprathim
     Scenario: Verify Add Subscribers button
     	Given I am in omnivue url
   	  When I log in as a "Admin" user
   	  #new
   	 	#And I verified "Search" dropdown tab is present
   	 	And I clicked on "Search" tab
      And I Search for the "TC39221" data from Search Tab
  		And I click on search button for "Inventory"
  		And I click on view icon of Search Result page
  		And In the 360 view I click on the "Subscribers" tab
  		And I click on "Add Subscribers"
   		Then I verify subscriber lookup page
 
 		@TC39263 @regprathim
 		 Scenario: Verify BAM Reports for the 360 view_Orders
     	 Given I am in omnivue url
   	   When I log in as a "Admin" user
   	   And I clicked on "Search" tab
       And I Search for the "TC39263" data from Search Tab
       And I click on search button for "Orders"
       And I click on view icon of Search Result page
       And In the 360 view I click on the "BAM Report" tab
    	 Then I should see BAM event logs displayed.
       	 
     @TC55484 @regprathim
 Scenario: Verify the create functionality of GPON device type MDU
 		 Given I am in omnivue url
   	 When I log in as a "Admin" user
   	 And I clicked on "Create" tab
   	 And I go to "Inventory" type and select "Device"
   	 And I Select "Role" as Filter By value
 		 And Select the Role as "DSLAM" with Device Type as "Calix E7" with Sub-Type as "Calix E7-2" 		 
 		 And I fill the madatory fields for subscriber with "TC55484-SubscriberDevices" data
 		 And I fill the mandatory fields with "TC55484-CreateDevices" data
 		 And I click on Create button 		 
 		 And I clicked the "Edit" button in Device Detail Page 		
 		 And I edit the enabled fields with "TC55484-CD" data 		
 		 And I clicked the "Save" button in Device Detail Page 		 
 		 And I verified all fields in device details page 		 
 		 And I clicked Networking Details Tab 		 
 		 And I clicked the "Edit" button in Networking Details Tab 		 
 		 And I edit the enabled fields with "TC55484-ND" data 		 
 		 And I clicked the "Save" button in Networking Details Tab  		 
 		 Then I verified all fields in networking details page		
 		 #Needs some rework to merge with others
 		 
 		 @TC39242 @regprathim
 		 Scenario: Verify the create functionality of GPON device type MDU
 		 Given I am in omnivue url
   	 When I log in as a "Admin" user
   	 And I clicked on "Create" tab
   	 And I go to "Inventory" type and select "Device"
   	 And I Select "Role" as Filter By value
 		 And Select the Role as "ONT" with Device Type as "Adtran Total Access 300 Series ONT" with Sub-Type as "Adtran TA324 G1"
 		 And I click on wirecenterCLLI search button 		 
 		 Then I verified all fields of wire center CLLI lookup
 		 
 		 
 		 @TC55671 @regprathim
 		 Scenario: Verify data displayed in the related tabs for GPON devices
 		  Given I am in omnivue url
   	  When I log in as a "Admin" user
   	  And I clicked on "Search" tab
 			And I Search for the "TC55671-Search" data from Search Tab
 			And I click on search button for "Inventory"
  		And I click on view icon of Search Result page
 			And In the 360 view I click on the "Tasks" tab 			
 			Then I verified "Tasks" Details page
 		 	And In the 360 view I click on the "Locations" tab
 		 	Then I verified "Locations" Details page
 		 	And In the 360 view I click on the "Circuits" tab
 		 	Then I verified "Circuits" Details page
 			
 			
 				 @TC55673 @regprathim
 		 Scenario: Verify data displayed in the related tabs for GPON devices
 		  Given I am in omnivue url
   	  When I log in as a "Admin" user
   	  And I clicked on "Search" tab
 			And I Search for the "TC55673-Search" data from Search Tab
 			And I click on search button for "Inventory"
  		And I click on view icon of Search Result page
 		 	And In the 360 view I click on the "Locations" tab
 		 	Then I verified "Locations" Details page
 		 	And In the 360 view I click on the "Circuits" tab
 		 	Then I verified "Circuits" Details page
 		 	And In the 360 view I click on the "Devices" tab
 			Then I verified "Devices" Details page
 			
 			@TC55535 @regprathim
 			Scenario: Verify the create functionality of GPON device type MST
 			 Given I am in omnivue url
   	 When I log in as a "Admin" user
   	 And I clicked on "Create" tab
   	 And I go to "Inventory" type and select "Device"
   	 And I Select "Role" as Filter By value
 		 And Select the Role as "MST" with Device Type as "Corning MST" with Sub-Type as "Corning 12-port MST"
 		 And I fill the mandatory fields with "TC55535-CreateDevices" data 
 		 And I click on Create button
 		 And I clicked the "Edit" button in Device Detail Page 		
 		 And I edit the enabled fields with "TC55484-CD" data 		 
 		 And I clicked the "Save" button in Device Detail Page  		 
 		 And I verified all fields in device details page 		
 		 And I clicked Networking Details Tab 		 
 		 And I clicked the "Edit" button in Networking Details Tab  		 
 		 And I edit the enabled fields with "TC55484-ND" data 	
 		 And I clicked the "Save" button in Networking Details Tab  		
 		 Then I verified all fields in networking details page