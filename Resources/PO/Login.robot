*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${EMAIL_ADDRESS_ID}
${PASSWORD_ID}
${SUBMIT_LOGIN_BUTTON}  xpath=//*[@id="new_user"]/div[3]/input


*** Keywords ***
Enter Creds
    [Arguments]  ${email_address}  ${password}
    Enter Login Email Address  ${email_address}
    Enter Login Password  ${password}
    Click On Login

Verfiy Successfull Login
    sleep  3s
    page should contain  My Courses

Verfiy Unsuccessfull Login
    sleep  3s
    page should contain  Invalid email or password.

Enter Login Email Address
    [Arguments]  ${email_address}
    input text  ${EMAIL_ADDRESS_ID}  ${email_address}

Enter Login Password
    [Arguments]  ${password}
    input text  ${PASSWORD_ID}  ${password}

Click On Login
    click button  ${SUBMIT_LOGIN_BUTTON}