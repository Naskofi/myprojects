*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
#Library  String
Resource  myproject_variables.resource

*** Keywords ***
Navigate to homepage and maximize browser
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window
  Click Element    ${CONSENT_BTN}

Navigate to create account page
   Click Element  ${CREATEACC}
   Maximize Browser Window
   Wait Until Page Contains Element    ${PAGE_MESSAGE}

#Generate Random Email
    #${random_string}    Generate Random String    10
    #${email}            Set Variable    ${random_string}@${DOMAIN}
    #[Return]            ${email}

#Enter all mandatory information and click create an account
   #Click Element    ${CREATEACC}
   #[Arguments]  ${firstname}  ${lastname}  ${email}  ${password}  ${confirm_password}  ${accCreatedMessage}
   #Execute Javascript  window.scrollTo(0,1000)
   #Input Text    ${CREATEACC_FIRSTNAME_FIELD}    ${firstname}
   #Input Text    ${CREATEACC_LASTNAME_FIELD}     ${lastname}
   #Input Text    ${SIGNIN_USERNAME_FIELD}        ${email}
   #Input Text    ${SIGNIN_PASSWORD_FIELD}        ${password}
   #Input Text    ${CONFIRM_PASSWORD_FIELD}       ${confirm_password}
   #Click Element    ${CREATEACC_BTN}
   #Wait Until Element Is Visible    ${ACC_CREATION_MESSAGE}


#Click on create account button
    #Click Element    ${CREATEACC_BTN}
    #Wait Until Element Is Visible    ${ACC_CREATION_MESSAGE}

Assert that the account is successfully created
    Wait Until Element Is Enabled    ${LOGGEDINUSER_DROPDOWN}
    Click Element    ${LOGGEDINUSER_DROPDOWN}
    Wait Until Element Is Enabled    ${SIGNOUT_LINK}
    Click Element    ${SIGNOUT_LINK}






