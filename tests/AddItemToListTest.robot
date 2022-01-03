*** Settings ***
Resource  ../tests/BaseTest.robot
Resource  ../resources/CreateListPage.robot
Resource  ../resources/AddItemToListPage.robot

Test Setup  Open Listonic on Main View
Test Teardown  Close Application

*** Test Cases ***
002 Add item to the list
  Create new list
  Open Add Products to list view
  Add product to the list
  Product is visible on the list

