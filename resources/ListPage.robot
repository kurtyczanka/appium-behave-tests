*** Settings ***
Library  AppiumLibrary

*** Variables ***
${ITEM_CHECKBOX}  id=com.l:id/checkboxWrapper

*** Keywords ***
Click on checkbox
  click element  ${ITEM_CHECKBOX}

Item is checked on the list
  Element Attribute Should Match  ${ITEM_CHECKBOX}  checked  true


