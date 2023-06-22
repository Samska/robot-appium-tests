*** Settings ***
Resource        ../../config/settings.robot
Resource        ../../resources/ios/variables/ios_base_variables.robot
Resource        ../../resources/ios/keywords/setup_keywords.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Test Scenario
    Capture Page Screenshot