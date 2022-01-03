*** Settings ***
Resource  ../tests/BaseTest.robot
Resource  ../resources/HomePage.robot
Resource  ../resources/ListPage.robot
Resource  ../resources/CreateListPage.robot

Test Setup  Open Listonic on Main View
Test Teardown  Close Application

*** Test Cases ***
001 Create new shopping list
  Click on fab button to create new list
  Input list name and accept it
  New list was created
