*** Settings ***
Library  AppiumLibrary
Documentation  Test cases for Listonic
Resource  ../tests/BaseTest.robot

Test Setup  Open Listonic on Main View
Test Teardown  Close Application


*** Variables ***
# main screen
${CREATE_LIST_BTN}  id=com.l:id/fab
${MENU_BTN}  class=android.widget.ImageButton
# adding a list
${LIST_NAME_INPUT}  id=com.l:id/new_list_edit_text
${CREATE_BTN}  id=com.l:id/createNewList
${TOOLBAR}  id=com.l:id/toolbarBelowPanel
#created list
${EXPECTED_LIST_TXT}  Zacznij dodawać produkty \nszybko i wygodnie
${CREATED_LIST_TXT_ELEMENT}  id=com.l:id/emptyViewTV
${ADD_PRODUCT_BTN}  id=com.l:id/addingFAB
${ADD_PRODUCT_INPUT}  id=com.l:id/input
${LIST_ITEMS}  class=android.widget.TextView


*** Test Cases ***
Create new shopping list
  Click on fab button to create new list
  Input list name and accept it
  New list was created

Add item to the list
  Create new list
  Open Add Products to list view and add product

*** Keywords ***
Click on fab button to create new list
  Wait Until Element Is Visible  ${CREATE_LIST_BTN}  timeout=10
  click element  ${CREATE_LIST_BTN}

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

Open Add Products to list view and add product
  Wait Until Element Is Visible  ${ADD_PRODUCT_BTN}
  click element  ${ADD_PRODUCT_BTN}
  input text  ${ADD_PRODUCT_INPUT}  mleko
  click element  ${LIST_ITEMS}
  sleep  10
