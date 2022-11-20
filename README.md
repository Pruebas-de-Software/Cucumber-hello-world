# Cucumber hello world : Get in my belly!
Primary exercise to know BDD and Cucumber, the objective is to know the way in which a Cucumber project is structured and learn how to write a "features" file. The project has been created in Maven and Eclipse configured with Cucumber plugins.

### The problem

"If I eat more than 10 cucumbers and wait more than 2 hour then my belly should growl"

### The solution

| time >= 2| Belly > 10 | Result |
| --- | --- | --- |
| 12  | 10  | false |
| 2   | 9   | false |
| 2 | 11 | true |
| 1 | 10 | false |
| 1 | 11 | false |
| 3 | 10 | false |
| 3 | 11 | true |
| 1 | 9 | ... |

## Belly feature, scenario example

```Gherkin
Feature: BellyFeature

  Scenario: eaten many cukes
    Given I have eaten 25 cukes
    When I wait 2 hour
  
  Scenario: eaten not enough cukes
  ...

```

## Binding
```java
    @Given("I have eaten {int} cukes")
    public void I_have_eaten_cukes(int cukes) throws Throwable {
		...
    }

    @When("I wait {int} hour")
    public void i_wait_hour(int arg1) throws Throwable {
		...
    }

    @Then("my Belly should growl")
    public void my_belly_should_growl() throws Throwable {
		...
    }
    
    @Then("my Belly should not growl")
    public void my_belly_should_not_growl() throws Throwable {
    	...
    }
```

### Execution instructions, from Eclipse

1. Open project "Open Projects from file System"
2. Run project

### Desde la consola
1. mvn test