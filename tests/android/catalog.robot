*** Settings ***
Resource            ../../config/settings.robot
Resource            ../../resources/android/variables/base_variables.robot
Resource            ../../resources/android/keywords/base_keywords.robot
Resource            ../../resources/android/keywords/catalog_keywords.robot
Resource            ../../resources/android/variables/catalog_variables.robot
Test Setup          Before Tests
Test Teardown       After Tests

*** Test Cases ***
Scenario: Open product from the catalog
    [Tags]    open_product
    ${expected_product_name}    ${expected_product_price} =    Get Catalog Product Details    ${FIRST_CATALOG_PRODUCT_NAME}    ${FIRST_CATALOG_PRODUCT_PRICE}
    Open Product and Validate Details    ${FIRST_CATALOG_PRODUCT_NAME}    ${PRODUCT_NAME}    ${PRODUCT_PRICE}    ${expected_product_name}    ${expected_product_price}

Scenario: Rate product from catalog
    [Tags]    rate_product
    Rate The Product and Confirm    ${FIRST_CATALOG_PRODUCT_RATE}

Scenario: Sort products by Name - Ascending
    [Tags]    sort_by
    Sort Products By    ${SORT_BY_NAME_ASC}

Scenario: Add product from catalog to cart
    [Tags]    add_cart
    Add Product To Cart    ${FIRST_CATALOG_PRODUCT_NAME}
    Verify Cart Count    ${CART_ITEM_COUNT}    1