*** Settings ***
Resource            ../../config/settings.robot
Resource            ../../resources/android/variables/base_variables.robot
Resource            ../../resources/android/variables/login_variables.robot
Resource            ../../resources/android/keywords/base_keywords.robot
Resource            ../../resources/android/keywords/login_keywords.robot
Test Setup          Before Tests
Test Teardown       After Tests

*** Test Cases ***
Scenario: Login with wrong credentials
    [Tags]    wrong_login
    Perform Logout
    Perform Login    test    test
    Element Text Should Be    ${ERROR_MSG}    Provided credentials do not match any user in this service.

Scenario: Login successfully
    [Tags]    login_success
    Perform Logout
    Perform Login    bob@example.com    10203040

Scenario: Logout successfully
    [Tags]    logout_success
    Perform Logout