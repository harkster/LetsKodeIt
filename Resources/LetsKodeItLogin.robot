*** Settings ***
Resource  .//PO/Landing.robot
Resource  .//PO/Login.robot

*** Variables ***


*** Keywords ***
Open Landing Page
    Landing.Go To Url
    Landing.Click On Login Button

Enter Login Creds
    [Arguments]  ${email_address}  ${password}
    Login.Enter Creds  ${email_address}  ${password}

Verify Login Is Successfull
    Login.Verfiy Successfull Login

Verify Login Is Not Successfull
    Login.Verfiy Unsuccessfull Login