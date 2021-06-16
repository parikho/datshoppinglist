*** Settings ***
Library     SeleniumLibrary
Resource  ../resources/resources.robot  

*** Variables ***
${url}   http://localhost:5000
${browser}    chrome 


*** Test Cases ***

testcase 01 createlist
    launchbrowser
    verifyhomepage
    create New shoppinglist
    Add Item to list
    Delete item from list
    kill browser
    
    
*** Keywords ***

launchbrowser
    Open Browser    ${url}    ${browser}    
    Maximize Browser Window
    Set Selenium Speed    2seconds
    
verifyhomepage
     Element Should Be Visible    //body/nav[1]/a[1]/span[1] 
     
create New shoppinglist
    Click Element    //button[contains(text(),'Create a new Shopping List')]    
    Element Should Be Visible    //h2[contains(text(),'Enter a name for your new shopping list')]    
    Input Text    //body/div[1]/form[1]/input[1]    Grocery   
    Click Element    //body/div[1]/form[1]/p[1]/input[1]    
    Element Should Be Visible    //h1[contains(text(),'Grocery')]  
    
Add Item to list
    Input Text   //body/section[1]/div[1]/ul[1]/li[8]/form[1]/input[1]    Apple    
    Click Element   //body/section[1]/div[1]/ul[1]/li[8]/form[1]/input[2]
    
Delete item from list
    Click Element    //body/section[1]/div[1]/ul[1]/li[6]/div[2]  
    
kill browser
    Close Browser  
    

     
    
    
    
    
    

    

    