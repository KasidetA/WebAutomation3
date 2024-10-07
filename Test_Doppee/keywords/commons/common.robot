*** Keywords ***
Open website
    [Arguments]    ${link_url}
    ${chrome_options}=    BuiltIn.Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${link_url}   ${ui_setting['browser']}    options=${chrome_options}
 
Click user icon
    SeleniumLibrary.Click Element       ${common_locator.user_icon}

Wait and click element
    [Arguments]         ${element_path}
    SeleniumLibrary.Wait Until Element Is Visible       ${element_path}     ${waiting_time}
    SeleniumLibrary.Click Element                       ${element_path}
    
Click popup
    Wait and click element              ${popup_locator.ok_btn}

Generate random number
    ${random_number}    DateTime.Get current date    result_format=%H%M%S
    RETURN     ${random_number}

Generate new email
    [Arguments]    ${email}
    ${parts}            String.Split string         ${email}    @
    ${mail_part}        BuiltIn.Set variable        ${parts[0]}
    ${domain_part}      BuiltIn.Set variable        ${parts[1]}
    ${random_number}    common.Generate random number
    ${modified_email}   BuiltIn.Set variable        ${mail_part}${random_number}@${domain_part}
    Save Modified Email To YAML    ${modified_email}

Save Modified Email To YAML
    [Arguments]    ${modified_email}
    ${data}=    Create Dictionary    email=${modified_email}
    Write YAML File    ${CURDIR}/../../resources/testdata/generated_email.yaml    ${data}

Write YAML File
    [Arguments]    ${file_name}    ${data}
    ${yaml_str}=    Evaluate    __import__('yaml').dump(${data})
    Create File    ${file_name}    ${yaml_str}