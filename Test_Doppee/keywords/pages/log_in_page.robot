*** Keywords ***
Fill in an email
    [Arguments]    ${email}
    Input text when ready          ${login_locator.email_container}    ${email}

Fill in password  
    [Arguments]    ${password}  
    Input text when ready          ${login_locator.password_container}    ${password}

Click login
    Click when ready        ${login_locator.log_in_btn} 

Click sign up button
    Click when ready       ${login_locator.sign_up_btn}