*** Keywords ***
Type and search product
    [Arguments]    ${product}
    SeleniumLibrary.Input Text          ${home_locator.input_txt}     ${product}
    Wait and click element              ${home_locator.search_btn}