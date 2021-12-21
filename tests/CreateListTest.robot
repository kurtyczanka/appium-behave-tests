*** Settings ***
Documentation  Test cases for Listonic
Library  AppiumLibrary
Resource  ../tests/BaseTest.robot


Test Setup  Open Listonic on Main View
Test Teardown  Close Application

*** Variables ***
# main screen
${CREATE_LIST_BTN}  id=com.l:id/fab
# adding a list
${LIST_NAME_INPUT}  id=com.l:id/new_list_edit_text
${CREATE_BTN}  id=com.l:id/createNewList
${TOOLBAR}  id=com.l:id/toolbarBelowPanel
#created list
${EXPECTED_LIST_TXT}  Zacznij dodawać produkty
                     szybko i wygodnie
${CREATED_LIST_TXT_ELEMENT}  id=com.l:id/emptyViewTV


*** Test Cases ***
Create shopping list
  Click plus button to create new list
  Input list name and accept it
  New list was created


*** Keywords ***
Click plus button to create new list
  Wait Until Element Is Visible  ${CREATE_LIST_BTN}
  click element  ${CREATE_LIST_BTN}


Input list name and accept it
  Wait Until Element Is Visible  ${LIST_NAME_INPUT}
  input text  ${LIST_NAME_INPUT}  ${TESTNAME}
  click element  ${CREATE_BTN}


New list was created
  Wait Until Element Is Visible  ${TOOLBAR}
  Element Should Contain Text  ${CREATED_LIST_TXT_ELEMENT}  ${EXPECTED_LIST_TXT}