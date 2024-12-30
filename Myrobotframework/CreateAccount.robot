*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Resource  myproject_variables.resource
Resource    CreateAccount.resource
Suite Setup  Navigate to homepage and maximize browser

*** Test Cases ***

Verify the account creation on the homepage
   #[Tags]  kofi
   Navigate to create account page
   #Wait Until Page Contains Element    ${CREATEACC}

Verify that all required information are entered and create account button clicked
   #[Tags]  kofi
   #${random_email}    Generate Random Email
   Enter all mandatory information and click create an account  #Kofi  Essuman  ${random_email}  August2024  August2024  Thank you for registering with Main Website Store.

Verify the account is successfully created
   Assert that the account is successfully created


*** Keywords ***
Enter all mandatory information and click create an account
   ${firstname}=  FakerLibrary.First Name
   Input Text    id=firstname     ${firstname}
   ${lastname}=  FakerLibrary.Last Name
   Input Text    id=lastname     ${lastname}
   ${email}=  FakerLibrary.Email
   Input Text    id=email_address      ${email}
   ${password}=  FakerLibrary.Password
   Input Text    id=password     ${password}
   Input Text    id=password-confirmation     ${password}
   Click Element    ${CREATEACC_BTN}
   Wait Until Element Is Visible    ${ACC_CREATION_MESSAGE}
