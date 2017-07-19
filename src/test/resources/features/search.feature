Feature: Sample

  @ui @pageobject
  Scenario: Should be able to search for a product from the input box
    Given John is viewing the Etsy landing page
    When he searches for a product from the input box
    Then the result should be displayed

  @ui @screenplay
  Scenario: Should be able to search for a product from the input box (screenplay)
    Given John is viewing the Etsy landing page (screenplay)
    When he searches for a product from the input box (screenplay)
    Then the result should be displayed (screenplay)

  @ui @pageobject
  Scenario: Should be able to search for a product from the drop-down menu
    Given John is viewing the Etsy landing page
    When he search for a "Bangles" from the Navigation menu
    Then he should see "Bangles" product page

  @ui @pageobject
  Scenario: Should be able to search for a product from the icons
    Given John is viewing the Etsy landing page
    When he search for a "Pendants" from the product icons
    Then he should see "Pendants" product page

  @api
  Scenario: user able to get valid token to access the website from login service
    Given John provide valid username "username"
    And John provide valid password "password"
    When he request for loging token
    Then he should see status code is 200
    And he should get login token

  @api
  Scenario: user able to search for product from api
    Given John enter a product to search "Toys"
    When he request for search
    Then he should see status code is 200
    And he should see search results
    





