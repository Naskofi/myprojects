package Step_Definition;

import Base.TestBase;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class ValidLogin extends TestBase {

    @Given("^I am on the homepage$")
    public void i_am_on_the_homepage() throws Throwable {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://magento.softwaretestingboard.com/");
    }

    @When("^I click sign in$")
    public void i_click_sign_in() throws Throwable {
        driver.findElement(By.linkText("Sign In")).click();
    }

    @When("^I see the username and password fields$")
    public void i_see_the_username_and_password_fields() throws Throwable {
        driver.findElement(By.id("email")).isDisplayed();
        driver.findElement(By.id("pass")).isDisplayed();
    }

    @When("^I enter the correct username$")
    public void i_enter_the_correct_username() throws Throwable {
        driver.findElement(By.id("email")).sendKeys("nasiressuman@yahoo.com");
    }

    @When("^I enter the correct password$")
    public void i_enter_the_correct_password() throws Throwable {
        driver.findElement(By.id("pass")).sendKeys("August2024");
    }

    @When("^I click login button$")
    public void i_click_login_button() throws Throwable {
        driver.findElement(By.id("send2")).click();
        Thread.sleep(3000);
    }

    @Then("^I should be logged in successfully$")
    public void i_should_be_logged_in_successfully() throws Throwable {
        String ExpectedLoggedInUser = "Welcome, Kofi Essuman!";
        String ActualLoggedInUser = driver.findElement(By.className("logged-in")).getText();
        Assert.assertEquals(ExpectedLoggedInUser, ActualLoggedInUser);
        System.out.println(ActualLoggedInUser);

        driver.close();
}

}