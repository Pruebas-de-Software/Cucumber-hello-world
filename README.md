# 🥒 Cucumber hello world : Get in my belly! BDD
Primary exercise to know Behavior Driven Development (BDD) and Cucumber, the objective is to know the way in which a Cucumber project is structured and learn how to write a "features" file. The project has been created in Maven and Eclipse configured with Cucumber plugins.

### The problem

"If I eat more than 10 cucumbers and wait 2 or more hours, then my belly should growl"

### The solution

- cukes > 10
- time >= 2

Using equivalence classes and boundary value

✅ = "My belly should growl"  
❌ = "My belly should not growl"

| Case | Cukes | Time (hours) | Expected result |
|------|-------|----------------|--------------------|
| 1    | 9     | 1              | ❌ no growl        |
| 2    | 9     | 2              | ❌ no growl        |
| 3    | 9     | 3              | ❌ no growl        |
| 4    | 10    | 1              | ❌ no growl        |
| 5    | 10    | 2              | ❌ no growl        |
| 6    | 10    | 3              | ❌ no growl        |
| 7    | 11    | 1              | ❌ no growl        |
| 8    | 11    | 2              | ✅ growl           |
| 9    | 11    | 3              | ✅ growl           |

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

## Execution Instructions

1. Clone or download the repository.
2. Open Eclipse → `File > Open Projects from File System` → select the project folder.
3. Make sure Cucumber plugins are installed (via Eclipse Marketplace).
4. Run the project using `Run As > Cucumber
5. View the output in the Eclipse **Console**.

## Requirements

- Java 8 or higher
- Eclipse IDE
- Cucumber plugin for Eclipse
- Maven

### From Console
From the root of the project (where `pom.xml` is located), run the following command:

```bash
mvn test

---


