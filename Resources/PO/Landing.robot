*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}
${LANDING_PAGE_HEADING_TEXT}    Welcome to Let's Kode It
${SIGNUP_BUTTON_XPATH}          xpath=//a[contains(text(), 'Sign Up')]
${SIGNUP_PAGE_HEADING_TEXT}     Sign Up to Let's Kode It
${LOGIN_BUTTON_XPATH}           xpath=//a[contains(text(), 'Login')]
${LOGIN_PAGE_HEADING_TEXT}      Log In to Let's Kode It

*** Keywords ***
Go To Url
    go to  ${URL}
    wait until page contains  ${LANDING_PAGE_HEADING_TEXT}

Click On SignUp Button
    click element  ${SIGNUP_BUTTON_XPATH}
    wait until page contains  ${SIGNUP_PAGE_HEADING_TEXT}

Click On Login Button
    click element  ${LOGIN_BUTTON_XPATH}
    wait until page contains  ${LOGIN_PAGE_HEADING_TEXT}