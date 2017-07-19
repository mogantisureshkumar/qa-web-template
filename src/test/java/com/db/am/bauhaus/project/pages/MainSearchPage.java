package com.db.am.bauhaus.project.pages;

import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.DefaultUrl;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

/**
 * Created by ongshir on 05/10/2016.
 */
@DefaultUrl("/")
public class MainSearchPage extends PageObject {

    @FindBy(id = "search-query")
    WebElementFacade inputBox;

    @FindBy(css = ".btn.btn-orange.btn-append")
    WebElementFacade searchButton;

    public MainSearchPage(WebDriver driver) {
        super(driver);
    }

    public void searchFromInputBox(String searchText) {
        inputBox.waitUntilPresent().sendKeys(searchText);
        searchButton.click();
    }

    public String getTopCategoriesHeader() {
        return find(By.cssSelector("h4.pb-xs-1-5")).getText();
    }

    public String getAllCategoriesHeader() {
        return find(By.cssSelector("h1.conform-heading.display-inline")).getText();
    }

    public void selectElementFromNavigationMenu(String mainNav, String subMenu, String product) {
        Actions builder = new Actions(getDriver());
        Actions hoverOverLocationSelector = builder.moveToElement(getDriver().findElement(By.linkText(mainNav)));
        hoverOverLocationSelector.perform();
        hoverOverLocationSelector = builder.moveToElement(getDriver().findElement(By.linkText(subMenu)));
        hoverOverLocationSelector.perform();
        getDriver().findElement(By.linkText(product)).click();

    }

    public void selectElementFromProductIcons(String mainNav, String subMenu, String product) {

        getDriver().manage().window().maximize();

        listSelection("Jewellery", ".display-block.card.text-gray-darker");
        listSelection("Necklaces", ".h3.child-hover-underline.h3-smaller.text-gray-darker.nav-grid-word-wrap.mt-sm-3.mb-sm-2");
        listSelection("Pendants", ".h3.child-hover-underline.h3-smaller.text-gray-darker.nav-grid-word-wrap");

    }


    public void listSelection(String item, String elementLocator) {
        List<WebElement> allElements = getDriver().findElements(By.cssSelector(elementLocator));

        for (WebElement element : allElements) {
            System.out.println(element.getText());
            if (element.getText().contains(item)) {
                element.click();
                break;
            }
        }
    }
}
