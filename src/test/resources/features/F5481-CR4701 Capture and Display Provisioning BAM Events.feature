Feature: User can view BAM events tab on Order - GPON and it display captured events

#OV - Display Order BAM Report (Lifecycle Events)
@US56683 @TC53577 @RegDemo
Scenario: OV – validate BAM Reports logs displayed on GPON orders for HSI orders
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for HSI Order" data from Search Tab
	And I click on search button for "Orders"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	Then I should see BAM event logs displayed.
	
	  #BAM Report Test3-602836
    #BAM Report Test1-612116
	
@US56683 @TC53577 @RegDemo
Scenario: OV – validate BAM Reports logs displayed on GPON orders for IPTV orders
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for IPTV Order" data from Search Tab
	And I click on search button for "Orders"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	Then I should see BAM event logs displayed.
	
		  #BAM Report Test3-615629
    #BAM Report Test1-615018
   
 @US56683 @TC86566 @RegDemo
 Scenario: OV - Validate BAM Report logs on Orders for GPON where no data is available
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "Orders without BAM logs" data from Search Tab
	And I click on search button for "Orders"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	Then I should see BAM event logs displayed.
	
	 #No BAM Report Test3-578391
    #No BAM Report Test1-638836
   
	
	###############################################################################################
	
#OV - Display Service BAM Report (Lifecycle Events)
@US56682 @TC52783 @RegDemo
Scenario: OV – validate BAM Reports logs displayed on GPON orders for HSI Service
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for HSI Service" data from Search Tab
	And I click on search button for "Inventory"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	Then I should see BAM event logs displayed.
	
		  #BAM Report Test3-1000005799-HSI
    #BAM Report Test1-1000005133-HSI
	
@US56682 @TC52783
	Scenario: OV – validate BAM Reports logs displayed on GPON orders for IPTV Service
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for IPTV Service" data from Search Tab
	And I click on search button for "Inventory"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	Then I should see BAM event logs displayed.
	
		  #BAM Report Test3-9092016307-IPTV
    #BAM Report Test1-1000005461-IPTV

	####################################################################################################
	
#Provide Refresh Button for BAM Display-US79809
	@US79810 @TC81419 @RegDemo
Scenario: OV - Validate Refresh button for BAM Reports on GPON orders
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for HSI Order" data from Search Tab
	And I click on search button for "Orders"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	And I do Refresh
	Then I should see BAM event logs displayed.
	
	
	@US79810 @TC81597 @RegDemo
Scenario: OV - Validate Refresh button for BAM Reports on GPON Service
	Given I am logged in as a "ValidAdmin" user in Omnivue
	When I clicked on "Search" tab
	And I Search for the "BAM logs for HSI Service" data from Search Tab
	And I click on search button for "Inventory"
	And I click on view icon of Search Result page
	And In the 360 view I click on the "BAM Report" tab
	And I do Refresh
	Then I should see BAM event logs displayed.
	
		  #BAM Report Test3-
    #BAM Report Test1-
    
    
    