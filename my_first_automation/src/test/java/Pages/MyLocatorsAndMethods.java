package Pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class MyLocatorsAndMethods {
    public int random;
    // Declare selectors/locators here

    @FindBy(how = How.XPATH, using = "//input[@id='firstname']")
    public static WebElement createAcc_firstname;

    @FindBy(how = How.XPATH, using = "//input[@id='lastname']")
    public static WebElement accCreate_lastname;

    @FindBy(how = How.XPATH, using = "//input[@id='email_address']")
    public static WebElement createAcc_emailaddress;

    @FindBy(how = How.XPATH, using = "//input[@id='password']")
    public static WebElement createAcc_password;

    @FindBy(how = How.XPATH, using = "//input[@id='password-confirmation']")
    public static WebElement createAcc_passwordconfirm;

    @FindBy(how = How.XPATH, using = "//button[@title='Create an Account']")
    public static WebElement createAcc_button;

    @FindBy(how = How.CLASS_NAME, using = "logged-in")
    public static WebElement LoggedInUser;


    //Declare methods here
    public void enterUserFirstname() {
        createAcc_firstname.sendKeys("Nas");
    }

    public void enterUserLastname() {
        accCreate_lastname.sendKeys("kof");
    }

    public void enterUserEmail() {
        random = 100 + (int) (Math.random() * ((1000 - 1) + 1));
        createAcc_emailaddress.sendKeys("Naskof" + random + "@gmail.com");
    }

    public void enterUserPassword() {
        createAcc_password.sendKeys("Testing2024");
    }

    public void enterPasswordConfirmation() {
        createAcc_passwordconfirm.sendKeys("Testing2024");
    }

    public void clickCreateAcc() throws InterruptedException {
        createAcc_button.click();
        Thread.sleep(3000);
    }

    public void assertLoggedInUser() {
        String ExpectedLoggedInUser = "Welcome, Nas kof!";
        String ActualLoggedInUser = LoggedInUser.getText();
        Assert.assertEquals(ExpectedLoggedInUser, ActualLoggedInUser);
        System.out.println(ActualLoggedInUser);

    }
}
