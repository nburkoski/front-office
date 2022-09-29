*** Settings ***
Documentation  This is the End to End Suite
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Data/InputData.robot

Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/BackOffice/Back_Office.robot

*** Variables ***

*** Test Cases ***
Should be able to access both Sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page

