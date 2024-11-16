package Step_Definition;

import Base.TestBase;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class InvalidLogin1 extends TestBase {
    @Given("^I get on the login page$")
    public void iGetOnTheLoginPage() {
        WebDriverManager.chromedriver().setup();
        driver= new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://magento.softwaretestingboard.com/");
        driver.findElement(By.linkText("Sign In")).click();
    }

    @When("^I type the wrong username$")
    public void iTypeTheWrongUsername() {
        driver.findElement(By.id("email")).sendKeys("nasiressan@yahoo.com");
    }

    @And("^I type the correct password$")
    public void iTypeTheCorrectPassword() {
        driver.findElement(By.id("pass")).sendKeys("August2024");
    }

    @When("^I select the login button$")
    public void iSelectTheLoginButton() throws InterruptedException {
        driver.findElement(By.id("send2")).click();
        Thread.sleep(3000);
    }

    @Then("^The login should fail$")
    public void theLoginShouldFail() {
        driver.findElement(By.xpath("//*[@id=\"maincontent\"]/div[2]/div[2]/div/div/div")).isDisplayed();
    }
}
