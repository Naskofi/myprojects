package Step_Definition;

import Base.TestBase;
import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class InvalidLogin2 extends TestBase {

    @Given("^I navigate to login page$")
    public void i_navigate_to_login_page() throws Throwable {
        WebDriverManager.chromedriver().setup();
        driver= new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://magento.softwaretestingboard.com/");
        driver.findElement(By.linkText("Sign In")).click();
    }

    @When("^I enter in my \"([^\"]*)\"$")
    public void i_enter_in_my(String username) throws Throwable {
        driver.findElement(By.id("email")).sendKeys(username);
    }

    @And("^I provide my \"([^\"]*)\"$")
    public void i_provide_my(String password) throws Throwable {
        driver.findElement(By.id("pass")).sendKeys(password);
    }

    @When("^I try to login$")
    public void i_try_to_login() throws Throwable {
        driver.findElement(By.id("send2")).click();
        Thread.sleep(3000);
    }

    @Then("^I should see correct \"([^\"]*)\"$")
    public void i_should_see_correct(String errorMessage) throws Throwable {
        String ExpectedErrorMessage = errorMessage;
        String ActualErrorMessage = driver.findElement(By.xpath("//*[@id=\"maincontent\"]/div[2]/div[2]/div/div/div")).getText();
        Assert.assertEquals(ExpectedErrorMessage, ActualErrorMessage);
        System.out.println(ActualErrorMessage);

        driver.close();
    }
}
