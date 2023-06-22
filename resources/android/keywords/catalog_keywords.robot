*** Settings ***
Resource    ./base_keywords.robot

*** Keywords ***
Get Catalog Product Details
    [Arguments]    ${catalog_product_name_locator}    ${catalog_product_price_locator}
    ${product_name_text}=    Get Text    ${catalog_product_name_locator}     
    ${product_price_text}=    Get Text    ${catalog_product_price_locator} 
    [Return]    ${product_name_text}    ${product_price_text}

Open Product and Validate Details
    [Arguments]    ${catalog_product_name_locator}    ${product_name_locator}    ${product_price_locator}    ${expected_product_name}    ${expected_product_price}
    Click Element       ${catalog_product_name_locator}
    Wait Until Element Is Interactive    ${product_name_locator} 
    ${product_name_text}=    Get Text    ${product_name_locator} 
    ${product_price_text}=    Get Text    ${product_price_locator} 
    Should Be Equal As Strings    ${product_name_text}    ${expected_product_name}
    Should Be Equal As Strings    ${product_price_text}    ${expected_product_price}

Rate The Product and Confirm
    [Arguments]    ${rating_button_locator}
    Click Element    ${rating_button_locator}
    Wait Until Element Is Interactive    ${CLOSE_REVIEW_BTN}
    Page Should Contain Text    Thank you for submitting your review!   
    Click Element    ${CLOSE_REVIEW_BTN}

Sort Products By
    [Arguments]    ${sort_type_locator}
    Click Element    ${SORT_BTN}
    Wait Until Element Is Interactive    ${sort_type_locator}
    Page Should Contain Text    Sort by:
    Click Element    ${sort_type_locator}
    Wait Until Element Is Interactive    ${SORT_BTN}
    Click Element    ${SORT_BTN}

Add Product To Cart
    [Arguments]    ${product_name_locator}
    Wait Until Element Is Interactive    ${product_name_locator}
    Click Element    ${product_name_locator}
    Wait Until Element Is Interactive    ${ADD_CART_BTN}
    Click Element    ${ADD_CART_BTN}

Verify Cart Count
    [Arguments]    ${cart_item_count_locator}    ${expected_count}
    Wait Until Element Is Interactive    ${cart_item_count_locator}
    Element Text Should Be    ${cart_item_count_locator}    ${expected_count}