*** Keywords ***
Select payment method
    Click when ready    ${payment_locator.next_btn}

Fill card number in credit card details
    [Arguments]    ${creditcard}    
    Input text when ready      ${payment_locator.card_number_container}    ${creditcard}

Fill expire date in credit card details    
    [Arguments]    ${exp}    
    Input text when ready      ${payment_locator.exp_container}    ${exp}

Fill cvc in credit card details 
    [Arguments]    ${cvc}
    Input text when ready      ${payment_locator.cvc_container}    ${cvc}

Fill card holder name in credit card details 
    [Arguments]    ${name}    
    Input text when ready      ${payment_locator.holder_name_container}    ${name} 

Click confirm payment
    Click when ready    ${payment_locator.confirm_payment_btn}