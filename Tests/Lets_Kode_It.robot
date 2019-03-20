*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/LetsKodeItSignUp.robot
Resource  ../Resources/LetsKodeItLogin.robot

Test Setup  Common.Start Test
Test Teardown  Common.End Test

*** Variables ***
${BROWSER}      chrome
${URL}          https://letskodeit.teachable.com/


*** Test Cases ***
User Should Be Able To Sign Up With Valid Information
    [Tags]  AccountSetUp
    LetsKodeItSignUp.Open Landing Page
    LetsKodeItSignUp.Complete SignUp Information  Name  email1@email.com  passmeplease
    LetsKodeItSignUp.Verify SignUp Successfull

User Should Not Be Able To Sign Up With Invalid Information
    [Tags]  AccountSetUp
    LetsKodeItSignUp.Open Landing Page
    LetsKodeItSignUp.Complete SignUp Information  Name  email1@e.com  ''
    LetsKodeItSignUp.Verify SignUp Is Not Successfull

User Should Be Able To Login With Valid Creds
    [Tags]  smoke
    LetsKodeItLogin.Open Landing Page
    LetsKodeItLogin.Enter Login Creds  harkaran_bajwa@hotmail.com  P@ssword1
    LetsKodeItLogin.Verify Login Is Successfull

User Not Should Be Able To Login With Valid Creds
    [Tags]  smoke
    LetsKodeItLogin.Open Landing Page
    LetsKodeItLogin.Enter Login Creds  test@ee.com  passthis
    LetsKodeItLogin.Verify Login Is Not Successfull

QA Test
    log  This is QA Env
