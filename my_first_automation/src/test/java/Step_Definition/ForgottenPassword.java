package Step_Definition;

import Base.TestBase;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.tracing.Span;

public class ForgottenPassword extends TestBase {
    @Given("^I am on the luma homepage$")
    public void i_am_on_the_luma_homepage() throws Throwable {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to( "https://magento.softwaretestingboard.com/");
    }

    @When("^I click sign in button$")
    public void i_click_sign_in_button() throws Throwable {
        driver.findElement(By.linkText("Sign In")).click();

    }

    @When("^I see forgotten your password$")
    public void i_see_forgotten_your_password() throws Throwable {
        driver.findElement(By.xpath("//span[text()='Forgot Your Password?']"));

    }

    @When("^I click forgotten your password$")
    public void i_click_forgotten_your_password() throws Throwable {
        driver.findElement(By.xpath("//span[text()='Forgot Your Password?']")).click();

    }

    @When("^I see the username field$")
    public void i_see_the_username_field() throws Throwable {
        driver.findElement(By.id("email_address")).isDisplayed();

    }

    @When("^I enter the correct email$")
    public void i_enter_the_correct_email() throws Throwable {
        driver.findElement(By.id("email_address")).sendKeys("nasiressuman@yahoo.com");

    }

    @When("^I click reset my password button$")
    public void i_click_reset_my_password_button() throws Throwable {
        driver.findElement(By.className("primary")).click();

    }

    @Then("^Password should be reset and I should a successful reset message displayed$")
    public void password_should_be_reset_and_I_should_a_successful_reset_message_displayed() throws Throwable {
        String ExpectedSuccessMessage = "If there is an account associated with nasiressuman@yahoo.com you will receive an email with a link to reset your password.";
        String ActualSuccessMessage = driver.findElement(By.xpath("//*[@id=\"maincontent\"]/div[2]/div[2]/div/div/div")).getText();
        Assert.assertEquals(ExpectedSuccessMessage, ActualSuccessMessage);
        System.out.println(ActualSuccessMessage);

        driver.close();


    }

}
