@regression
Feature: As a user, I should be able to register successfully

@author_Maya  @regression
  Scenario: VerifyUserShouldNavigateToRegisterPageSuccessfully
    Given I am on Home Page
    When  I click on Register Link
    Then  I can verify "Register" text

  @smoke @regression
  Scenario Outline: VerifyThatFirstNameLastNameEmailPasswordAndConfirmPasswordFieldsAreMandatory
    Given I am on Home Page
    When  I click on Register Link
    And   Click on REGISTER button
    Then  Verify the error message "<errorMessage>"
    Examples:  | errorMessage |
    |First name is required.|
    |Last name is required. |
    |Email is required.     |
    |Password is required.  |
    |Password is required.  |

  @sanity @regression
  Scenario: VerifyThatUserShouldCreateAccountSuccessfully
    Given I am on Home Page
    When  I click on Register Link
    And   Select gender "female"
    And   Enter firstname "Maya"
    And   Enter lastname "Smith"
    And   Select day "06"
    And   Select month "January"
    And   Select year "1999"
    And   Enter email "Friends@yahoo.com"
    And   Enter password "abc123"
    And   Enter Confirm Password "abc123"
    And   Click on "REGISTER" button
    Then  Verify message "Your registration completed"


