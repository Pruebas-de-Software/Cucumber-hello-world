Feature: Belly growl conditions

  Scenario: Case 1 - 9 cukes, 1 hour
    Given I have eaten 9 cukes
    When I wait 1 hour
    Then my Belly should not growl

  Scenario: Case 2 - 9 cukes, 2 hours
    Given I have eaten 9 cukes
    When I wait 2 hour
    Then my Belly should not growl

  Scenario: Case 3 - 9 cukes, 3 hours
    Given I have eaten 9 cukes
    When I wait 3 hour
    Then my Belly should not growl

  Scenario: Case 4 - 10 cukes, 1 hour
    Given I have eaten 10 cukes
    When I wait 1 hour
    Then my Belly should not growl

  Scenario: Case 5 - 10 cukes, 2 hours
    Given I have eaten 10 cukes
    When I wait 2 hour
    Then my Belly should not growl

  Scenario: Case 6 - 10 cukes, 3 hours
    Given I have eaten 10 cukes
    When I wait 3 hour
    Then my Belly should not growl

  Scenario: Case 7 - 11 cukes, 1 hour
    Given I have eaten 11 cukes
    When I wait 1 hour
    Then my Belly should not growl

  Scenario: Case 8 - 11 cukes, 2 hours OK
    Given I have eaten 11 cukes
    When I wait 2 hour
    Then my Belly should growl

  Scenario: Case 9 - 11 cukes, 3 hours OK
    Given I have eaten 11 cukes
    When I wait 3 hour
    Then my Belly should growl
