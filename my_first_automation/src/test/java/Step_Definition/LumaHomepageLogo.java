package Step_Definition;

import Base.TestBase;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
public class LumaHomepageLogo extends TestBase {

    @Given("^I have launched my browser$")
    public void i_have_launched_my_browser() throws Throwable {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

    @When("^I enter the application url and hit enter on my keyboard$")
    public void i_enter_the_application_url_and_hit_enter_on_my_keyboard() throws Throwable {
        driver.navigate().to("https://magento.softwaretestingboard.com/");
    }

    @Then("^Page should be fully loaded and i should see luma logo displayed$")
    public void page_should_be_fully_loaded_and_i_should_see_luma_logo_displayed() throws Throwable {
        driver.findElement(By.className("Logo")).isDisplayed();
    }

}
