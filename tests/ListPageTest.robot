*** Settings ***
Resource  ../tests/BaseTest.robot
Resource  ../resources/AddItemToListPage.robot
Resource  ../resources/CreateListPage.robot
Resource  ../resources/ListPage.robot

Test Setup  Open Listonic on Main View
Test Teardown  Close Application

*** Test Cases ***
002 Add item to the list
  Create new list
  Open Add Products to list view
  Add product to the list  orange juice
  Product is visible on the list  orange juice

003 Mark item as bought on the list
  Create new list
  Open Add Products to list view
  Add product to the list  milk
  Click on checkbox
  Item is checked on the list
