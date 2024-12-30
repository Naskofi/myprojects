*** Settings ***
Library  Browser
Library  FakerLibrary

*** Test Cases ***
New user should be able to create account
  Navigate to create account page
  Enter user first and last names
  Enter user email
  Enter user password and confirm password
  Click create account and assert that account was created successfully





*** Keywords ***
Navigate to create account page
   New Browser  Chromium  headless=false
   New Page  https://magento.softwaretestingboard.com/customer/account/create/
   Click    xpath=//button[@aria-label='Consent']


 Enter user first and last names
    ${firstname}=  FakerLibrary.First Name
   Log   ${firstname}
   Set Test Variable    ${firstname}
   Fill Text    id=firstname    ${firstname}
   ${lastname}=  FakerLibrary.Last Name
   Log   ${lastname}
   Set Test Variable    ${lastname}
   Fill Text    id=lastname    ${lastname}

 Enter user email
   ${email}=  FakerLibrary.Email
   Log   ${email}
   Set Test Variable    ${email}
   Fill Text    id=email_address    ${email}

 Enter user password and confirm password
   ${password}=  FakerLibrary.Password
   Log   ${password}
   Set Test Variable    ${password}
   Fill Text    id=password    ${password}
   Fill Text   id=password-confirmation    ${password}

Click create account and assert that account was created successfully
   Click    xpath=//button[@title='Create an Account']
   Get Text    xpath=//div[@class='message-success success message']  *=  Thank you for registering with Main Website Store.
