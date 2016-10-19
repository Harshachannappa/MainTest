Feature: CR4701 GPON Market Launch Test Orders (MLTO) JulyUS65043

#US65043--CR4701 GPON MLTO uses DSP provisioning flow for MLTO and HSI (HSI+PRISM)

@US65043 @TC83402 
  Scenario: OV-Validate GPON MLTO Attribute Validation
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab     
   Then I validate attributes in create form for "MLTO" 
  
  @US65043 @TC83402 
  Scenario: OV-Validate GPON MLTO for HSI Service Type
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab
    And I fill all the fields in Order with "HSI-MLTO data" 
    Then I Click on the Create Button in Order Details page
  
   @US65043 @TC83425
  Scenario: OV-Validate GPON MLTO for HSI+PRISM Service Type
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab
    And I fill all the fields in Order with "HSI+PRISM-MLTO data" 
    Then I Click on the Create Button in Order Details page
    
    
    
    #US60114--CR4701 GPON MLTO does not require V and H Coordinates
    
    @US60114 @TC81783
    Scenario: OV-Validate V and H coordinates is not present in create MLTO form 
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Create" tab
    And I select "Orders" in Create Tab     
   Then I validate "V and H coordinates" attributes in create form for "MLTO" 
    
    
    @US60114 @TC81783 @Testred
    Scenario Outline: OV-Validate V and H coordinates is not present in MLTO Search form 
    Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for <Container>
    And I click on search button for "Orders"
    And I click on view icon in Search Result page     
   Then I validate "V and H coordinates" attributes in Search page for "MLTO"
   
     Examples: 
    |Container								|
    |HSI MLTO Order						|
		|HSI+PRISM MLTO Order			| 
		
   #Test3
   #Order no. 578613 (HSI)
#Order no: 578588 (HIS+PRISM)

#Test1 
#Order no. 646494 (HSI)
#Order no: 638772 (HIS+PRISM)
   
   @US60114 @TC81783
    Scenario: OV-Validate V and H coordinates is not present in MLTO Edit form 
    Given I am logged in as a "ValidAdmin" user in Omnivue
     Given I am logged in as a "ValidAdmin" user in Omnivue
    When I clicked on "Search" tab         
    And I searched for <Container>
    And I click on search button for "Orders"
    And I click on view icon in Search Result page 
    And I click on "Edit" button in MLTO Search page   
   Then I validate "V and H coordinates" attributes in create form for "MLTO" 