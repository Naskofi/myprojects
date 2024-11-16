package Step_Definition;

import Base.TestBase;
import Pages.MyLocatorsAndMethods;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.PageFactory;

public class CreateAccount extends TestBase {

    @And("^I enter all mandatory information$")
    public void iEnterAllMandatoryInformation() {
        MyLocatorsAndMethods pages = PageFactory.initElements(driver, MyLocatorsAndMethods.class);
        pages.enterUserFirstname();
        pages.enterUserLastname();
        pages.enterUserEmail();
        pages.enterUserPassword();
        pages.enterPasswordConfirmation();

    }

    @When("^I select the register button$")
    public void iSelectTheRegisterButton() throws InterruptedException {
        MyLocatorsAndMethods pages = PageFactory.initElements(driver, MyLocatorsAndMethods.class);
        pages.clickCreateAcc();

    }

    @Then("^My account should be created successfully$")
    public void myAccountShouldBeCreatedSuccessfully() {
        MyLocatorsAndMethods pages = PageFactory.initElements(driver, MyLocatorsAndMethods.class);
        pages.assertLoggedInUser();


        driver.close();
    }
}
