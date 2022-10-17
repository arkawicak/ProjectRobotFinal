*** Settings ***
Resource           ../Resources/DemoStore_keywordhomepage.robot
Resource           ../Resources/DemoStore_keywordregister.robot
Test Setup        DemoStore_keywordregister.Open Browser With Google Chrome
Test Teardown     DemoStore_keywordregister.Close Google Chrome Browser

*** Test Cases ***

Verify Element Home Page

    Banner Discount Is Appears
    # Login Button Is Appears
    Contact Us Button Is Appears
    Sign In Menu Is Appears
    Input Search Is Appears
    Cart Is Appears
    Product Item Is Appears
    Footer Is Appears