*** Settings ***
Resource        ../../config/settings.robot
Resource        ../../resources/ios/variables/base_variables.robot
Resource        ../../resources/ios/keywords/setup_keywords.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Login with wrong credentials
    Capture Page Screenshot

Scenario: Login successfully
    Capture Page Screenshot

Scenario: Logout successfully
    Capture Page Screenshot