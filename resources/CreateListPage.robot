*** Settings ***
Library  AppiumLibrary
Resource  ../resources/HomePage.robot

*** Variables ***
${LIST_NAME_INPUT}  id=com.l:id/new_list_edit_text
${CREATE_BTN}  id=com.l:id/createNewList
${TOOLBAR}  id=com.l:id/toolbarBelowPanel
${EXPECTED_LIST_TXT}  Zacznij dodawać produkty \nszybko i wygodnie
${CREATED_LIST_TXT_ELEMENT}  id=com.l:id/emptyViewTV
${ADD_PRODUCT_BTN}  id=com.l:id/addingFAB

*** Keywords ***
Input list name and accept it
  Wait Until Element Is Visible  ${LIST_NAME_INPUT}
  input text  ${LIST_NAME_INPUT}  ${TESTNAME}
  click element  ${CREATE_BTN}

New list was created
  Wait Until Element Is Visible  ${TOOLBAR}
  Element Should Contain Text  ${CREATED_LIST_TXT_ELEMENT}  ${EXPECTED_LIST_TXT}

Create new list
  Click on fab button to create new list
  Input list name and accept it

Open Add Products to list view
  Wait Until Element Is Visible  ${ADD_PRODUCT_BTN}
  click element  ${ADD_PRODUCT_BTN}

