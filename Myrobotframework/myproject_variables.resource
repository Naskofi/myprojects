# Created by Nas at 12/1/2024
*** Settings ***

*** Variables ***
${URL}  https://magento.softwaretestingboard.com/
${BROWSER}  chrome
${CREATEACC}  xpath://div[@class='panel header']/ul//li[3]
#${CONSENT_BTN}  xpath://button[@aria-label='Consent']
${CONSENT_BTN}  xpath://button[@class=' css-1n36tvh']
${PAGE_MESSAGE}  xpath://div[@class="page-title-wrapper"]
#${CREATEACC_FIRSTNAME_FIELD}  xpath://input[@class="input-text required-entry"]
#${CREATEACC_LASTNAME_FIELD}  xpath://input[@id="lastname"]
#${SIGNIN_USERNAME_FIELD}  xpath://input[@id="email_address"]
#${SIGNIN_PASSWORD_FIELD}  xpath://input[@id="password"]
#${CONFIRM_PASSWORD_FIELD}  xpath://input[@id="password-confirmation"]
${CREATEACC_BTN}  xpath://button[@class='action submit primary']
${ACC_CREATION_MESSAGE}  xpath://div[@class='message-success success message']
${LOGGEDINUSER_DROPDOWN}  xpath://button[@data-action='customer-menu-toggle']
${SIGNOUT_LINK}  xpath://div[@class='customer-menu']/ul//li[3]
${DOMAIN}  yahoo.com

*** Keywords ***
