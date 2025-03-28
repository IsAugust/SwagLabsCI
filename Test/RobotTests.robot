# Created by gusta at 3/26/2025
*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
User Can Complete a Purchase
    Open Browser    https://IsAugust.github.io/SwagLabsCI/swag_labs.html    headlesschrome
    Maximize Browser Window
    Wait Until Element Is Visible    id=username
    Sleep    1s
    Input Text    id=username    standard_user
    Sleep    1s
    Input Text    id=password    secret_sauce
    Sleep    1s
    Click Button    id=login-button
    Sleep    1s
    Wait Until Element Is Visible    id=product-page
    Sleep    1s
    Click Button    xpath=//*[@id="products-grid"]/div[1]/button
    Sleep    1s
    Click button    xpath=//*[@id="products-grid"]/div[2]/button
    Sleep    1s
    Click button    xpath=//*[@id="products-grid"]/div[3]/button
    Sleep    1s
    Click Element    xpath=//*[@id="product-page"]/div[1]/div/div
    Sleep    1s
    Wait Until Element Is Visible    xpath=//*[@id="cart-items"]    2s
    Sleep    1s
    Click button    xpath=//*[@id="cart-items"]/div[1]/button
    Sleep    1s
    Input Text    id=first-name    Jonathan
    Sleep    1s
    Input Text    id=last-name    Joestar
    Sleep    1s
    Input Text    id=postal-code    54321
    Sleep    1s
    Click Button    xpath=//*[@id="checkout-page"]/div[2]/button
    Wait Until Element Is Visible    class=confirmation-container
    Sleep    1s
    [Teardown]    Close Browser
