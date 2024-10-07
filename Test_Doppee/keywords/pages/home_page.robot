*** Keywords ***
Input product name
    [Arguments]    ${product}
    Input text when ready          ${home_locator.input_txt}     ${product}
    
Click search button
    Click when ready            ${home_locator.search_btn}