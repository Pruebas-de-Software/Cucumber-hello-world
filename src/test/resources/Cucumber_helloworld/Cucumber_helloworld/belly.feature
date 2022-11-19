Feature: BellyFeature

  Scenario: eaten many cukes
    Given I have eaten 42 cukes
    When I wait 2 hour
    Then my Belly should growl
    
  Scenario: eaten not enough cukes
    Given I have eaten 5 cukes
    When I wait 4 hour
    Then my Belly should not growl
    
  Scenario: should fail 1
    Given I have eaten 10 cukes
    When I wait 2 hour
    Then my Belly should not growl 
  
  Scenario: should fail 2
    Given I have eaten 9 cukes
    When I wait 2 hour
    Then my Belly should growl 
 
   Scenario: should fail 3
    Given I have eaten 10 cukes
    When I wait 1 hour
    Then my Belly should not growl
    
  Scenario: should fail 4
    Given I have eaten 11 cukes
    When I wait 1 hour
    Then my Belly should not growl
    
   Scenario: should fail 5
    Given I have eaten 10 cukes
    When I wait 3 hour
    Then my Belly should not growl   
    
   Scenario: should fail 6
    Given I have eaten 9 cukes
    When I wait 1 hour
    Then my Belly should not growl    
    
   Scenario: should fail 7
    Given I have eaten 9 cukes
    When I wait 1 hour
    Then my Belly should not growl  
    
   Scenario: should pass 1
    Given I have eaten 11 cukes
    When I wait 2 hour
    Then my Belly should growl 
  
   Scenario: should pass 2
    Given I have eaten 11 cukes
    When I wait 3 hour
    Then my Belly should growl