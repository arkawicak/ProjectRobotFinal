*** Settings ***
Resource           ../Resources/DemoStore_keywordregister.robot
Test Setup        Open Browser With Google Chrome
Test Teardown     Close Google Chrome Browser

*** Test Cases ***
User Should Be Able To Register
    Click Sign In Menu
    Enter Valid Email
    Click Create An Account Button
    Radio Button Is Selected
    Enter Valid FirstName
    Enter Valid Password 
    User Can Input DOB
    Select Valid Checkbox
    Enter Valid Firstname In Section Address
    Enter Valid Lastname In Section Address
    Enter Valid Company
    Enter Valid Address
    Enter Valid Address2
    Enter Valid City
    Enter Valid State
    Enter Valid Postcode
    Enter Valid Country
    Enter Valid Additional
    Enter Valid Home Phone
    Enter Valid Address Alias
    Click Register Button
    

Create Account Without Enter Email
    Click Sign In Menu
    Click Create An Account Button
    Verify Error Message Is Appears

Register Without Enter All Field
    Click Sign In Menu
    Click Create An Account Button
    Click Register Button
    Verify Error Message Register 
    



    

