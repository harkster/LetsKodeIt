*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

*** Variables ***
${SIGNUP_FULL_NAME_FIELD_ID}    id=user_name
${EMAIL_ADDRESS_ID}             id=user_email
${PASSWORD_ID}                  id=user_password
${CONFIRM_PASSWORD_ID}          id=user_password_confirmation
${AGREE_TERMS_ID}               id=user_agreed_to_terms
${SUBMIT_SIGNUP_XPATH}          xpath=//input[@type='submit']

*** Keywords ***
Enter Sign Up Info
    [Arguments]  ${name}  ${email_address}  ${password}
    Enter Full Name  ${name}
    Enter SignUp Email Address  ${email_address}
    Enter And Confirm SignUp Password  ${password}

Wait For Captcha
    execute manual step  Waiting For Captcha To Resolve  True

Agree To Terms
    click element  ${AGREE_TERMS_ID}

Submit SignUp
    click button  ${SUBMIT_SIGNUP_XPATH}

Verify Successfull SignUp Message
    sleep  3s
    page should contain  My Courses

Verify Unsuccessfull SignUp Message
    sleep  3s
    page should contain  Oops! Please fix the following:

Enter Full Name
    [Arguments]  ${name}
    input text  ${SIGNUP_FULL_NAME_FIELD_ID}  ${name}

Enter SignUp Email Address
    [Arguments]  ${email_address}
    input text  ${EMAIL_ADDRESS_ID}  ${email_address}

Enter And Confirm SignUp Password
    [Arguments]  ${password}
    input text  ${PASSWORD_ID}  ${password}
    input text  ${CONFIRM_PASSWORD_ID}  ${password}