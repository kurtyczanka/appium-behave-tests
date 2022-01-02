*** Settings ***
Library  AppiumLibrary

*** Variables ***
${ADD_PRODUCT_INPUT}  id=com.l:id/input
${LIST_ITEMS}  class=android.widget.TextView
${DONE_BTN}  com.l:id/action_menu_adding_done
${PRODUCT}  milk
${PRODUCT_NAME_ON_LIST}  com.l:id/productName

*** Keywords ***
Add product to the list
  input text  ${ADD_PRODUCT_INPUT}  ${PRODUCT}
  click element  ${LIST_ITEMS}
  click element  ${DONE_BTN}

Product is visible on the list
  wait until element is visible  ${PRODUCT_NAME_ON_LIST}
  element should contain text  ${PRODUCT_NAME_ON_LIST}  ${PRODUCT}