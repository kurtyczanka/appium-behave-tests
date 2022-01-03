*** Settings ***
Library  AppiumLibrary

*** Variables ***
${CREATE_LIST_BTN}  id=com.l:id/fab
${MENU_BTN}  accessibility_id=Przejdź wyżej

*** Keywords ***
Click on fab button to create new list
  Wait Until Element Is Visible  ${CREATE_LIST_BTN}  timeout=10
  click element  ${CREATE_LIST_BTN}
