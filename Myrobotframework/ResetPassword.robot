# Created by Nas at 12/1/2024
*** Settings ***
Library  SeleniumLibrary
Resource  ResetPassword.resource
Suite Setup  Navigate to homepage and maximize browser


*** Test Cases ***
Verify the sign in botton on the homepage
   Navigate to Sign in page
   #Wait Until Page Contains Element    ${SIGNIN_BTN}

Verify that password can be reset
   Click forgot your password
   Enter the correct email
   Click reset my password button
   There should be successful reset message displayed