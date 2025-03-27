# Created by gusta at 3/26/2025
*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
User Can Complete a Purchase
    Open Browser    https://IsAugust.github.io/SwagLabsCI/swag_labs.html    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id=username
    Sleep    2s
    Input Text    id=username    standard_user
    Sleep    2s
    Input Text    id=password    secret_sauce
    Sleep    2s
    Click Button    id=login-button
    Sleep    2s
    Wait Until Element Is Visible    id=product-page
    Sleep    2s
    Click Button    xpath=//*[@id="products-grid"]/div[1]/button
    Sleep    2s
    Click button    xpath=//*[@id="products-grid"]/div[2]/button
    Sleep    2s
    Click button    xpath=//*[@id="products-grid"]/div[3]/button
    Sleep    2s
    Click Element    xpath=//*[@id="product-page"]/div[1]/div/div
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="cart-items"]    10s
    Sleep    2s
    Click button    xpath=//*[@id="cart-items"]/div[1]/button
    Sleep    2s
    Input Text    id=first-name    Jonathan
    Sleep    2s
    Input Text    id=last-name    Joestar
    Sleep    2s
    Input Text    id=postal-code    54321
    Sleep    2s
    Click Button    xpath=//*[@id="checkout-page"]/div[2]/button
    Wait Until Element Is Visible    class=confirmation-container
    Sleep    2s
    [Teardown]    Close Browser