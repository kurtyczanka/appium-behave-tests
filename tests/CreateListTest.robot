*** Settings ***
Documentation  Test cases for Listonic u
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

*** Test Cases ***
Create shopping list



*** Keywords ***
