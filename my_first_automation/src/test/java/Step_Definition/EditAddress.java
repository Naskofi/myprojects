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
import org.openqa.selenium.support.ui.Select;

public class EditAddress extends TestBase {
    @Given("^I am logged in to my account$")
    public void iAmLoggedInToMyAccount() throws InterruptedException {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.navigate().to("https://magento.softwaretestingboard.com/customer/account/login");
        driver.findElement(By.id("email")).sendKeys("naskof@gmail.com");
        driver.findElement(By.id("pass")).sendKeys("Testing2024");
        driver.findElement(By.id("send2")).click();
        Thread.sleep(3000);
    }

    @When("^I click on address book$")
    public void iClickOnAddressBook() throws InterruptedException {
        driver.findElement(By.xpath("//ul[@class='nav items']/li[6]")).click();
        driver.findElement(By.xpath("//span[text()='Change Shipping Address']")).click();
    }

    @And("^I enter address details$")
    public void iEnterAddressDetails() {
        driver.findElement(By.xpath("//input[@id='telephone']")).sendKeys("123456789");
        driver.findElement(By.xpath("//input[@id='street_1']")).sendKeys("Keskusta");
        driver.findElement(By.xpath("//input[@id='city']")).sendKeys("Helsinki");
        Select dropdownCountry = new Select(driver.findElement(By.xpath("//select[@id='country']")));
        dropdownCountry.selectByVisibleText("Finland");
        Select dropdownRegion = new Select(driver.findElement(By.xpath("//select[@id='region_id']")));
        dropdownRegion.selectByValue("336");
        driver.findElement(By.xpath("//input[@name='postcode']")).sendKeys("00000");

    }

    @When("^I click save$")
    public void iClickSave() {
        driver.findElement(By.xpath("//button[@title='Save Address']")).click();

    }


    @Then("^My address should be edited successful$")
    public void myAddressShouldBeEditedSuccessful() {
        String ExpectedSavedMessage = "You saved the address.";
        String ActualSavedMessage = driver.findElement(By.xpath("//div[@data-bind=\"html: $parent.prepareMessageForHtml(message.text)\"]")).getText();
        Assert.assertEquals(ExpectedSavedMessage, ActualSavedMessage);
        System.out.println(ActualSavedMessage);

        driver.close();
    }
}
