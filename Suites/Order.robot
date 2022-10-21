*** Settings ***
Resource           ../Resources/DemoStore_keywordOrder.robot
Resource           ../Resources/DemoStore_keywordregister.robot
Resource           ../Resources/DemoStore_keywordlogin.robot
Test Setup        Open Browser With Google Chrome
Test Teardown     Close Google Chrome Browser

*** Test Cases ***
User Should be Able to Order Product
    Click Sign In Menu
    Input Username Field
    Input Password Field
    Click Login Button
    Click Element Women
    Click Element Cart
    Click Element Checkout

    


    

