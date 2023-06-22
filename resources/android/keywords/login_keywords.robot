*** Settings ***
Resource    ./base_keywords.robot

*** Keywords ***    
Select Menu Option
    [Arguments]    ${menu_option}
    Wait Until Element Is Interactive    ${menu_option}
    Click Element    ${menu_option}

Enter Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Interactive    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BTN}

Perform Login
    [Arguments]    ${username}    ${password}
    Open Menu
    Wait Until Element Is Interactive    ${LOGIN_MENU}
    Select Menu Option    ${LOGIN_MENU}
    Enter Credentials    ${username}    ${password}

Perform Logout
    Open Menu
    Wait Until Element Is Interactive    ${LOGOUT_MENU}
    Select Menu Option    ${LOGOUT_MENU}
    Wait Until Element Is Interactive    ${LOGOUT_YES}
    Click Element    ${LOGOUT_YES}
    Wait Until Element Is Interactive    ${LOGOUT_MSG}
    Element Text Should Be    ${LOGOUT_MSG}    You are successfully logged out.
    Click Element    ${LOGOUT_OK}