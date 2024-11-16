package Base;

import org.openqa.selenium.WebDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class TestBase {
    public static Properties CONFIG = null;
    public static WebDriver driver = null;
    public int random;
    public void initialize() throws IOException {
        if (driver == null) {
            CONFIG = new Properties();
            FileInputStream fn = new FileInputStream(System.getProperty("user.dir") + "/src/main/java/config/config.properties");
            CONFIG.load(fn);
        }
    }
}
