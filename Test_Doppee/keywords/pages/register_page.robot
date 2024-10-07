*** Keywords ***
Input register email
    [Arguments]    ${email}    
    Input text when ready      ${register_locator.username_container}     ${email}

Input register password
    [Arguments]    ${password}    
    Input text when ready      ${register_locator.password_container}    ${password}

Input confirm password
    [Arguments]    ${cf_password}    
    Input text when ready      ${register_locator.confirm_password_container}    ${cf_password}

Click submit button
    Click when ready    ${register_locator.submit_btn}