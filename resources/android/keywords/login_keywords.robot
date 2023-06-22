*** Keywords ***
Open Menu
    Wait Until Keyword Succeeds    5x    1s    Click Element    ${HAMBURGUER_MENU}

Select Menu Option
    [Arguments]    ${menu_option}
    Wait Until Keyword Succeeds    5x    1s    Click Element    ${menu_option}

Enter Credentials
    [Arguments]    ${username}    ${password}
    Wait Until Keyword Succeeds    5x    1s    Input Text    ${USERNAME_FIELD}    ${username}
    Wait Until Keyword Succeeds    5x    1s    Input Text    ${PASSWORD_FIELD}    ${password}
    Wait Until Keyword Succeeds    5x    1s    Click Element    ${LOGIN_BTN}

Perform Login
    [Arguments]    ${username}    ${password}
    Open Menu
    Wait Until Keyword Succeeds    5x    1s    Select Menu Option    ${LOGIN_MENU}
    Wait Until Keyword Succeeds    5x    1s    Enter Credentials    ${username}    ${password}

Perform Logout
    Open Menu
    Wait Until Keyword Succeeds    5x    1s    Select Menu Option    ${LOGOUT_MENU}
    Wait Until Keyword Succeeds    5x    1s    Click Element    ${LOGOUT_YES}
    Wait Until Keyword Succeeds    5x    1s    Element Text Should Be    ${LOGOUT_MSG}    You are successfully logged out.
    Wait Until Keyword Succeeds    5x    1s    Click Element    ${LOGOUT_OK}
    