#language:en

@ecommerce @registration_flow
Feature: User Registration

Background: User on main screen
    Given that i access the main screen

@registration_flow_1
Scenario: Make a user registration
    When click on signin option
    And provide a email address to create an account
    And input my personal information
    And click on Register
    Then can see the private options to my user account