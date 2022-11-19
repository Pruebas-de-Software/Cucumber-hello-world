package Cucumber_helloworld.Cucumber_helloworld;

import io.cucumber.java.en.*;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class StepDefinitions {

	Belly belly = new Belly(); 
	
	@Given("I have eaten {int} cukes")
    public void I_have_eaten_cukes(int cukes) throws Throwable {
		System.out.println("===============================");
		System.out.println("I'm eating " + cukes + " cukes!");
    	belly.eat(cukes);
    }

	@When("I wait {int} hour")
    public void i_wait_hour(int arg1) throws Throwable {
		System.out.println("I wait " + arg1 + " hrs!");
        belly.wait(arg1);
    }

	@Then("my Belly should growl")
	public void my_belly_should_growl() throws Throwable {
		assertTrue(belly.isGrowling());
    }
    
    @Then("my Belly should not growl")
    public void my_belly_should_not_growl() throws Throwable {
    	assertFalse(belly.isGrowling());
    }
}
