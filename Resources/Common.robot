*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}

*** Keywords ***
Start Test
    open browser  about:blank  ${BROWSER}

End Test
    close all browsers