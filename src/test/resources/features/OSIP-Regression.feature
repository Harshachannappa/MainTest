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
    And Log out from OMNIVue
    
     @TC39187 @RegDemo
  Scenario: OSIP-Verify the functionality of Create Button for create form -Subscriber
    Given I am in omnivue url
    When I log in as a "Admin" user
    Then I clicked on "Create" tab
    And I go to "Inventory" type and select "Subscriber"
    And I click on the Launch Create form button
    And I fill the mandatory fields with "TC39187-Subscriber" data
    And Log out from OMNIVue
    
    
    @TC39192 @RegDemo
     Scenario: Verify the functionality of Create Button for logical port
     Given I am in omnivue url
     When I log in as a "Admin" user
     And I clicked on "Create" tab
     And I go to "Inventory" type and select "Logical Port"
     And I Select Port Type as "Ethernet Bearer"
     And I click on the Launch Create form button
     And I fill the mandatory fields with "TC39192-Logical" data
     
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