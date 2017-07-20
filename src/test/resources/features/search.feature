Feature: Sample

  @ui @pageobject
  Scenario: Should be able to search for a product from the input box
    Given John is viewing the Etsy landing page
    When  he searches for a product from the input box
    Then  the result should be displayed

  @ui @screenplay
  Scenario: Should be able to search for a product from the input box (screenplay)
    Given John is viewing the Etsy landing page (screenplay)
    When  he searches for a product from the input box (screenplay)
    Then  the result should be displayed (screenplay)

  @ui @pageobject
  Scenario: Should be able to search for a product from the drop-down menu
    Given John is viewing the Etsy landing page
    When  he search for a "Bangles" from the Navigation menu
    Then  he should see "Bangles" product page

  @ui @pageobject
  Scenario: Should be able to search for a product from the icons
    Given John is viewing the Etsy landing page
    When  he search for a "Pendants" from the product icons
    Then  he should see "Pendants" product page

  @api
  Scenario: user able to get valid token to access the website from login service
    Given John provide valid username "username"
    And   John provide valid password "password"
    When  he request for loging token
    Then  he should see status code is 200
    And   he should get login token

  @api
  Scenario: user able to search for product from api
    Given John enter a product to search "Toys"
    When  he request for search
    Then  he should see status code is 200
    And   he should see search results


  @ui@register
  Scenario: user should be able to see the registration fields
    Given John is in Landing page
    When  he clicks on Register button
    Then  he should be able to view “First Name”,”Email”,”Password”,”Confirm Password”,”Register” buttons

  @ui@cart
  Scenario: To verify whether valid response is getting from the application when user clicks on empty cart or not
    Given User is in landing page
    When  he clicks on cart with out adding any items
    Then  he should be able to see the message "Your cart is empty"

  @ui@signin
  Scenario: user should be able to see the signin fields
    Given John is in Landing Page
    When  he clicks on SignIn button
    Then  he should be able to see the the SignIn form by default

  @ui@signin
  Scenario: user should be able to see the signin option by default
    Given John is in Landing Page
    When he clicks on signin button
    Then he should be able to see the signin option by default

  @ui@signin
  Scenario: To verify the default functionlities of signin
    Given   User is in Landing Page
    When    he clicks on SignIn button
    Then    he should be able to see that the "Stay signed in" Check box ticked by default

  @ui@homepage
  Scenario: To verify whether the Home,All categories,Number of items options displaying or not
    Given  User is in the landing page
    When   he clicks on search button
    Then   he should see All categories, Home, Number of items options