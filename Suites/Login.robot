*** Settings ***
Resource           ../Resources/DemoStore_keywordlogin.robot
Resource           ../Resources/DemoStore_keywordregister.robot
Test Setup        Demostore_keywordregister.Open Browser With Google Chrome
Test Teardown     Demostore_keywordregister.Close Google Chrome Browser

*** Test Cases ***
User Should Be Able To Login
    Click Sign In Menu
    Input Username Field
    Input Password Field
    Click Login Button

Verification Login With Invalid Email
    Click Sign In Menu
    Input Invalid Email
    Input Password Field
    Click Login Button
    Verify Error Message Login

Verification Login With Invalid Password And Email
    Click Sign In Menu
    Input Invalid Email
    Input Invalid Password
    Click Login Button
    Verify Error Message Login