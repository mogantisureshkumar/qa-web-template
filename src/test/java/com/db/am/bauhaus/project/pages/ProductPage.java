package com.db.am.bauhaus.project.pages;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebDriver;

public class ProductPage extends PageObject {

    @FindBy(css = ".float-left>h1")
    WebElementFacade productPageHeader;

    public ProductPage(WebDriver driver) {
        super(driver);
    }


    public String getHeaderText() {
        return productPageHeader.waitUntilPresent().getText();

    }
}
