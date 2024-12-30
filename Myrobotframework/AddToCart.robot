# Created by Nas at 12/1/2024
*** Settings ***
Library  SeleniumLibrary
Resource  AddToCart.resource
Suite Setup  Navigate to homepage and maximize browser

*** Test Cases ***

Verify the cart botton on the homepage
   Wait Until Page Contains Element  ${HOMEPAGE_CARTBTN}

Verify dropdown lists for women
   [Tags]  koffi
   Hover on women/men and assert items in dropdown list  ${NAVLINK_WOMEN}  Tops   Bottoms
   Hover on Tops for women/men and assert that correct items are listed  ${DROPDOWN_TOPS_WOMEN}  Jackets  Hoodies & Sweatshirts  Tees  Bras & Tanks
   Hover on bottom for women/men and assert that the correct items are listed  ${DROPDOWN_BOTTOMS_WOMEN}  Pants  Shorts

Verify dropdown lists for men
   Wait Until Element Is Visible   ${NAVLINK_MEN}  10s
   Hover on women/men and assert items in dropdown list  ${NAVLINK_MEN}  Tops   Bottoms
   Hover on Tops for women/men and assert that correct items are listed  ${DROPDOWN_TOPS_MEN}  Jackets  Hoodies & Sweatshirts  Tees  Tanks
   Hover on bottom for women/men and assert that the correct items are listed  ${DROPDOWN_BOTTOMS_MEN}  Pants  Shorts

Verify dropdown lists for gears
   Hover on gear and assert items in dropdown list  ${NAVLINK_GEARS}  Bags  Fitness Equipment  Watches

Verify dropdown lists for Training
   Hover on training and assert items in dropdown list  ${NAVLINK_TRAINING}  Video Download

Verify that the sales is displayed among the navigation links
   Assert sales is displayed among the navigation links

Verify item can be added to cart
   Add item to cart