*** Settings ***
Library     SeleniumLibrary
Suite Setup
Suite Teardown


*** Test Cases ***
Observe user is able to test sanity
    [Tags]  sanity
    User Launch browser for flipkart store 
    Then User enter there username and password
    Goto electronics section 
    Select the Audio option then Bluetooth Speakers
    Pick product Bluetooth Speakers
    Add product to cart
    Go back to homepage
    Check item in cart


*** Keywords ***
User Launch browser for flipkart store
    Open Browser       https://www.flipkart.com/  gc
    Maximize Browser Window
    Sleep   2s
User enter there username and password
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  9696238423
    Input Password  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  somyaa1312
    Sleep   1s
    Click Button  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep   1s
Goto electronics section 
    Wait Until Element is Visible   xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img  
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Sleep   2s
Select the Audio option then Bluetooth Speakers
    Mouse Down  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[1]/a[1]
    Sleep   1s
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[5]
    Click Element   xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[5]
    Sleep   2s
Pick product Bluetooth Speakers
    Click Element   xpath=//*[@id="container"]/div/div[3]/div/div[2]/div[4]/div/div[1]/div/a[2]
    Sleep   1s   
Add product to cart
    Switch Window  new
    Click Button    xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    Sleep   2s
Go back to homepage
    Click Element   xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
    Sleep   2s
Check item in cart
    Click Element   xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a
    Sleep   1s
    
