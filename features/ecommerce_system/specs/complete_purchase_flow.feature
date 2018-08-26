#language:en

@ecommerce @purchase_flow
Feature: Purchase flow

Background: User on main screen
    Given that i access the main screen

@scenario_purchase_flow_1
Scenario: Add item to cart and login on purchase flow
    When choose a item
    And add it to my cart
    And proceed to checkout
    And check if the product has been added successfuly
    And provide valid login and password credentials
    And check the address
    And check the Shipping
    And finalize it with the payment data
    Then the purchase it's finished successfuly