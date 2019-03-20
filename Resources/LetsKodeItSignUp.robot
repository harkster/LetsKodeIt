*** Settings ***
Resource  .//PO/Landing.robot
Resource  .//PO/SignUp.robot

*** Variables ***


*** Keywords ***
Open Landing Page
    Landing.Go To Url

Complete SignUp Information
    [Arguments]  ${name}  ${email_address}  ${password}
    Landing.Click On SignUp Button
    SignUp.Enter Sign Up Info  ${name}  ${email_address}  ${password}
    SignUp.Wait For Captcha
    SignUp.Agree To Terms
    SignUp.Submit SignUp

Verify SignUp Successfull
    SignUp.Verify Successfull SignUp Message

Verify SignUp Is Not Successfull
    SignUp.Verify Unsuccessfull SignUp Message