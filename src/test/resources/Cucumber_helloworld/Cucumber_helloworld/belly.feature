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