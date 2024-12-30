# Created by Nas at 12/1/2024
*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://magento.softwaretestingboard.com/
${BROWSER}  chrome
${SIGNIN_BTN}   xpath://div[@class='panel header']/ul//li[2]
${LOGIN_URL}  https://magento.softwaretestingboard.com/customer/account/login
${FORGOTPASSWORD}   xpath://a[@class='action remind']
${EMAIL}   xpath://div[@class="field email required"]
${RESET_BUTTON}   xpath://button[@class="action submit primary"]
${SUCCESS_MESSAGE}   xpath://div[@class="message-success success message"]
${CONSENT_BTN}  xpath://button[@aria-label='Consent']


*** Keywords ***
Navigate to homepage and maximize browser
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window
  Click Element    ${CONSENT_BTN}

Navigate to Sign in page
   Open Browser  ${LOGIN_URL}  ${BROWSER}
   Maximize Browser Window
   Click Element    ${CONSENT_BTN}
   #Wait Until Element Is Visible    ${SIGNIN_BTN}
   #Click Element    ${SIGNIN_BTN}
   Sleep    5s

Click forgot your password
   #Scroll Element Into View    ${FORGOTPASSWORD}
   #Wait Until Element Is Visible    ${FORGOTPASSWORD}  Timeout=5s
   #Set Focus To Element    ${FORGOTPASSWORD}
   #Execute Javascript  window.scrollTo(0,1000)
   Wait Until Element Is Visible    ${FORGOTPASSWORD}
   Click Element    ${FORGOTPASSWORD}

Enter the correct email
   Input Text    ${EMAIL}    nasiressuman@yahoo.com

Click reset my password button
   Click Button    ${RESET_BUTTON}

There should be successful reset message displayed
   Wait Until Element Is Visible    ${SUCCESS_MESSAGE}
   ${Last_navigation_link}=  Get Text    ${SUCCESS_MESSAGE}
   log  ${Last_navigation_link}

