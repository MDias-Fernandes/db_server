#language:en

@ecommerce @registration_flow
Feature: Complete purchase flow

@registration_flow_1
Scenario: Make a user registration
    Given that i access the main screen
    When access the registration option
    And put my personal data required
    And save the register
    Then the user it's registered

#@registration_flow_2