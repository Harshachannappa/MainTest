Feature: OSIP Regression cases


  @TC44383 
  Scenario: OSIP-360 View Location - Individual Address_Verify Related Tab - Contacts Add Contact Button
    Given I am in omnivue url
    When I log in as a "Admin" user
    #When I goto Activation Page
    And I clicked on "Search" tab
    And I Search for the "TC44383-Location" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I verified view page and clicked on "Contacts" tab
    Then I validate Add contact button in contacts tab
    
    
     @TC39187 
  Scenario: OSIP-Verify the functionality of Create Button for create form -Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    Then I fill the mandatory fields with "TC39187-Subscriber" data
   
    
    
    @TC39192
     Scenario: Verify the functionality of Create Button for logical port
     Given I am in omnivue url
     When I log in as a "Admin" user
     And I clicked on "Create" tab
     And I go to "Inventory" type and select "Logical Port"
     And I Select Port Type as "Ethernet Bearer"
     And I click on the Launch Create form button
     Then I fill the mandatory fields with "TC39192-Logical" data
     
 
   @TC39186 
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
     @TC39186-1
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
    
@Regression
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
   
   
   @Regression
  Scenario: Validate fields in Create Device Screen for GPON Splitter
  Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Create" tab
	And I entered details for the "GENERIC OPTICAL SPLITTER"
	And I Select "1:8 splitter" for the drop down Device Sub Type
	And I click on Launch Create Form for "DeviceCreate"
  Then Validate fields in create device page for splitter 
	
     @Regression 
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
   
  @TC55536 @regprathim @regtesthar
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
    
      @TC55531
  Scenario: Verify the create functionality of GPON device type OLT
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "OLT" with Device Type as "Calix E7" with Sub-Type as "Calix E7-2"
    And I fill the mandatory fields with "TC55531" data
		And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55531_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page
    
      @TC55534
  Scenario: Verify the create functionality of GPON device type MDU
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Device"
    And I Select "Role" as Filter By value
    And Select the Role as "MDU" with Device Type as "Calix MDU" with Sub-Type as "Calix 761 MDU"
    And I fill the mandatory fields with "TC55534" data
    And I clicked the "Edit" button in Device Detail Page
    And I edit the enabled fields with "TC55534_EnabledFields" data in Device Detail Tab
    And I validate "TC55531_EnabledFields" data in the Device Detail Page
    And I clicked Networking Details Tab
    And I clicked the "Edit" button in Networking Details Tab
    And I edit the enabled fields with "Network Information" data in Networking Details Tab
    And I clicked the save button in Networking Details Tab
    Then I validate "Network Information" data in the Network Detail Page
    
      @TC55701 @regprathim
  Scenario: Verify the create functionality of Transport Path
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Network Build" type and select "Transport Path"
    And I Select Device Role as "NID" with Device Name as "OREMUTTC00W-01CUST.01"
    And I validate "OREMUTTC00W-01CUST.01" device name along with the start device name
    And I select "101/GE1/OREMUTMA05W/OREMUTTC00W" as circuit between start and end device in Transport Path page
    And I validate "101/GE1/OREMUTMA05W/OREMUTTC00W" device name along with the end device name
    Then I validate the submit button as enabled and click on it
    
      @TC54960 @regprathim
  Scenario: Verify Create Topology functionality for PON Collector
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Topology"
    And I verified "Inventory" from the Create Type dropdown
    And I verified "Topology" from the Inventory Type dropdown
    And I Select Topology Type as "PON Collector" with State as "CO - Colorado"
    And I fill the necessary fields with "TopologyData" data in Create Topology Page
    And I click on "AddDevice" button
    And I verified attributes in Place Devices in Topology Page 
    And I search Device Type as "Calix C Series" with Device SubType as "Calix C7"
    Then I validate "TopologyData" data in the Topology Detail Page
    
    ##########################################################################################################################

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

  #NEWMOHIT 
  @TC54963
  Scenario: Verify Edit functionality for PON Collector Topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC54963-Search" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "Topology" Detail Page
    And I edit the enabled fields with "TC55963-TD" data
    And I clicked the "Save" button in "Topology" Detail Page
    Then I verified all fields in topology details page

  @TC54965
  Scenario: Verify correct Data displayed in Related tab for PON Collector Topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC54965-Search" data from Search Tab
    And I verified "Inventory" from the Search type dropdown
    And I verified "Topology" from the Inventory type dropdown
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Devices" tab
    Then I verified correct Data displayed in Devices tab

  #Ankit
  @TC39243
  Scenario: Verify Service Association section for the service typeMEFENNI
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Create" tab
    And I go to "Inventory" type and select "Service"
    And I Search for the "TC39243" data from Search Tab
    And I click on the Launch Create form button
    #new
    Then I verify all The Fields depending on selected value from SPEC Code dropdown

  @TC39225
  Scenario: Verify the Add Subscriber association button
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39225" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And In the 360 view I click on the "Subscribers" tab
    #NEW
    And I verify Add subscriber Association button

  @TC39223
  Scenario: Verify the Add Subscriber association button
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC39223" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "Link" Detail Page
    #new
    Then I fill the field from "Tc39223searchlink"
    And I clicked the "Save" button in "Link" Detail Page
    #new
    Then I validate the field which we had selected

  @TC55672
  Scenario: Verify data displayed in the related tabs of generic topology
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55672" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    Then I verified "Devices" Details page
    And In the 360 view I click on the "Locations" tab
    Then I verified "Locations" Details page
    And In the 360 view I click on the "Circuits" tab
    Then I verified "Circuits" Details page

  @TC55318
  Scenario: Verify the Edit functionality of DSL OVC Service
    Given I am in omnivue url
    When I log in as a "Admin" user
    And I clicked on "Search" tab
    And I Search for the "TC55318" data from Search Tab
    And I click on search button for "Inventory"
    And I click on view icon of Search Result page
    And I clicked the "Edit" button in "DSL OVC" Detail Page
    #NEW
    And I fill data from "OVServiceDetailsPage" and "TC55318-main"
    #NEW
    Then I validate the updated service details
    
   @TC55509
 		 Scenario: Verify the create functionality of GPON device type MDU
 		 Given I am in omnivue url
   	 When I log in as a "Admin" user
   	 And I clicked on "Create" tab
   	 And I go to "Inventory" type and select "Device"
   	 And I Select "Role" as Filter By value
 		 And Select the Role as "NPE" with Device Type as "Alcatel-Lucent 7750 Service Router" with Sub-Type as "Alcatel-Lucent 7750 SR-12" 		 
 		 And I fill the madatory fields for subscriber with "TC55484-SubscriberDevices" data
 		 And I fill the mandatory fields with "TC55509-CreateDevices" data
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
