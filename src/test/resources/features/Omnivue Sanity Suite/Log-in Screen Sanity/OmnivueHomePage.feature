Feature: Sanity check on each build
  
  
  @Sanity @all
  Scenario: OV- Validating login page of Omnivue
    Given I am in omnivue url
    When I am in the Omnivue Welcome page
    And I need to check User login box
    And I need to evaluate all the systems are up & running
    Then I log in as a "Admin" user
    
  @Sanity @all
  Scenario: Verify OMNIVUE Version is displayed
    Given I am in omnivue url
    Then OMNIVUE Version should be displayed in Login Page

  @Sanity @all
  Scenario: Verify user is able to perform successful login
    Given I am in omnivue url
    When I log in as a "Admin" user
    Then User should be navigated to Activations Page