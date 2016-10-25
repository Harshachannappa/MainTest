Feature: CR4701 GPON Device Build Ehancements
	As an inventory user, I need the OV GPON device build enhanced so that I can input an infrastructure build in 20 minutes or less. 


####################################################################################################################################

#US68557---CR4701 GPON OLT Edit screen issues


@US68557 @TC75816 @all
Scenario: OV-Validate Max Subscriber Bandwidth field is mandatory and editable for edit OLT device
Given I am logged in as a "ValidAdmin" user in Omnivue 
    When I clicked on "Search" tab
     And I searched for "GPON-OLT Devie-TC75816"
     And I click on search button for "Inventory"
    And I click on view icon in Search Result page
       And I clicked the "Edit" button in Device Detail Page
       Then I validate "Max Subscriber Bandwidth" attributes in Edit form for "OLT Device"
       And I clicked the "Save" button in Device Detail Page
       
       
       # Fields In OLT Device--Provision Status* , Functional Status,Network Element Note,Restricted Status Notes,Device CLLI,Device Name,Device Full Name*,Network Roles*,Alias1, ,Relay Rack Shelf*,Alias2,Device Type,Device Sub Type,Device ID,Device HECIG,Vendor Name,Vendor Part Number,Part Type,Manfacturer Part Number,IPV4 Mgm Router ID,IPV4 Console 1,IPV4 Console 2,IPV4 Selection,Can Auto Translate,Is Diverse,Shared Flag*,Management VLAN,Subscriber Id,Subscriber Type,Subscriber Name*,Affiliate Owner*,Location Name,MCO,Network Node #,Max Subscriber Bandwidth*,EMS/CMS Node ID,1 Gbps Indicator*,,Stack Ring Sequence #,Stack Ring Shelf Identifier,NOSA Certification*,