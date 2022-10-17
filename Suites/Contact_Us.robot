*** Settings ***
Resource           ../Resources/DemoStore_keywordcontact.robot
Resource           ../Resources/DemoStore_keywordregister.robot
Test Setup        Demostore_keywordregister.Open Browser With Google Chrome
Test Teardown     Demostore_keywordregister.Close Google Chrome Browser

*** Test Cases ***
User Should Be Enter valid Contact
    Click Contact Us Menu
    Verify Contact Us Page
    Verify Select Subject Heading 
    Verify Input Email
    Verify Input Order Reference
    Verify Upload File
    Verify Input Message
    Verify Click Button Send
    Verify Success Message
