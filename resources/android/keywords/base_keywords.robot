*** Settings ***
Resource    ./login_keywords.robot
Resource    ../variables/base_variables.robot
Resource    ../variables/login_variables.robot

*** Keywords ***
Before Tests
    Open App
    Perform Login    bob@example.com    10203040

After Tests
    Close Application

Open App
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    name=${JOB_NAME}

Wait Until Element Is Interactive
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}
    Wait Until Element Is Visible    ${locator}

Open Menu
    Wait Until Element Is Interactive    ${HAMBURGUER_MENU}
    Click Element    ${HAMBURGUER_MENU}