# Created by Nas at 12/1/2024
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://magento.softwaretestingboard.com/
${BROWSER}  chrome
${HOMEPAGE_CARTBTN}  xpath://a[@class='action showcart']
${NAVLINK_WOMEN}  xpath://ul[@id='ui-id-2']/li[2]
${NAVLINK_MEN}  xpath://ul[@id='ui-id-2']/li[3]
${NAVLINK_GEARS}  xpath://ul[@id='ui-id-2']/li[4]
${NAVLINK_TRAINING}  xpath://ul[@id='ui-id-2']/li[5]
${NAVLINK_SALES}  xpath://ul[@id='ui-id-2']/li[6]
${DROPDOWN_TOPS_MEN}  xpath://a[@id='ui-id-17']
${DROPDOWN_BOTTOMS_MEN}  xpath://a[@id= 'ui-id-18']
${DROPDOWN_TOPS_WOMEN}  xpath://a[@id= 'ui-id-9']
${DROPDOWN_BOTTOMS_WOMEN}  xpath://a[@id= 'ui-id-10']
${LOGIN_URL}  https://magento.softwaretestingboard.com/customer/account/login
${CREATEACC_URL}  https://magento.softwaretestingboard.com/customer/account/create/
${GEAR_BAG}  xpath://a[@id='ui-id-25']
${GEAR_BAG1}  xpath://ol[@class='products list items product-items']/li[1]
${CONSENT_BTN}  xpath://button[@aria-label='Consent']

*** Keywords ***
Navigate to homepage and maximize browser
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window
  Click Element    ${CONSENT_BTN}

Navigate to login page
   Open Browser  ${LOGIN_URL}  ${BROWSER}
   Maximize Browser Window

Hover on women/men and assert items in dropdown list
   [Arguments]  ${navlink1}  ${dropdown_items1}  ${dropdown_items2}
    Mouse Over    ${navlink1}
    Page Should Contain    ${dropdown_items1}
    Page Should Contain    ${dropdown_items2}

Hover on Tops for women/men and assert that correct items are listed
    [Arguments]  ${topslink}  ${tops_items1}  ${tops_items2}  ${tops_items3}  ${tops_items4}
    Mouse Over   ${topslink}
    Page Should Contain   ${tops_items1}
    Page Should Contain    ${tops_items2}
    Page Should Contain    ${tops_items3}
    Page Should Contain   ${tops_items4}

Hover on bottom for women/men and assert that the correct items are listed
    [Arguments]  ${bottomlink}  ${bottom_items1}  ${bottom_items2}
    Mouse Over   ${bottomlink}
    Page Should Contain   ${bottom_items1}
    Page Should Contain    ${bottom_items2}

Hover on gear and assert items in dropdown list
   [Arguments]   ${NAVLINK_GEARS}  ${gear_items1}  ${gear_items2}  ${gear_items3}
   Mouse Over    ${NAVLINK_GEARS}
   Page Should Contain    ${gear_items1}
   Page Should Contain    ${gear_items2}
   Page Should Contain    ${gear_items3}

Hover on training and assert items in dropdown list
   [Arguments]  ${NAVLINK_TRAINING}  ${training_items1}
   Mouse Over   ${NAVLINK_TRAINING}
   Page Should Contain   ${training_items1}

Assert sales is displayed among the navigation links
   Wait Until Element Is Visible    ${NAVLINK_SALES}
   ${Last_navigation_link}=  Get Text    ${NAVLINK_SALES}
   log  ${Last_navigation_link}
   
   
Add item to cart
   Mouse Over    ${NAVLINK_TRAINING}
   Click Element  ${GEAR_BAG}
   Click Element  ${GEAR_BAG1}

