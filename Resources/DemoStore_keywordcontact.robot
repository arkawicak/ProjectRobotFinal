*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorscontact.yaml
Variables                  ../Resources/DemoStore_locatorsregister.yaml

*** Variables ***
${Contact_URL}            http://automationpractice.com/index.php?controller=contact


*** Keywords ***

Click Contact Us Menu
     Click Element                ${ContactUsMenu}
Verify Contact Us Page
    Location Should Be                ${Contact_URL}

Verify Select Subject Heading 
    Select From List By Value        ${SubjectHeading}            2   

Verify Input Email
    Input Text                        ${Email}                text=arkawicak@gmail.com 

Verify Input Order Reference
    Input Text                         ${OrderRef}            text=belajartest

Verify Upload File
    Choose File                        ${Upload}              D:/Bootcamp dojobox/Web Auto Robot/Project RObot/ProjectRobotFinal/Resources/Aset/Planet9_3840x2160.jpg

Verify Input Message
    Input Text                          ${Message}            text=saya baru belajar

Verify Click Button Send
     Click Element                      ${Send}

Verify Success Message
    Wait Until Element Is Visible     ${SuccessMessage} 
    Element Should Be Visible          ${SuccessMessage}  
    