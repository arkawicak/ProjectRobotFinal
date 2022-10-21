*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorsOrder.yaml

*** Variables ***

*** Keywords ***
Click Element Women
    Click Element                         ${WomenButton}   
Click Element Cart
    Element Should Be Visible            ${CartElement}
    Click Element                         ${CartButton}

Click Element Checkout
    Wait Until Element Is Visible          ${CheckoutButton}
    Click Element                         ${CheckoutButton}
    




