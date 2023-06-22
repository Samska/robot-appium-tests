*** Settings ***
Resource        ../../config/settings.robot
Resource        ../../resources/ios/variables/base_variables.robot
Resource        ../../resources/ios/keywords/base_keywords.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Take screenshot
    Capture Page Screenshot