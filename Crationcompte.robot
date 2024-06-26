*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${firstname}    chaima
${lastname}    chaima
${email}    med.test@gmail.com
${tel}    98000000
${password}    test123!
${email1}    chaimachaima@test.fr
${url}    https://ecommerce-playground.lambdatest.io/

*** Test Cases ***
Creation de compte
    Open Browser    ${url}    Chrome
    Title Should Be    Your Store
    Click button    css=a[href="https://ecommerce-playground.lambdatest.io/index.php?route=account/account"]
    Click Element    css=a[href="https://ecommerce-playground.lambdatest.io/index.php?route=account/register"]
    Input Text    css=input[name="firstname"]    ${firstname}
    Input Text    css=input[name="lastname"]    ${lastname}
    Input Text    css=input[name="email"]    ${email}
    Input Text    css=input[name="telephone"]    ${tel}
    Input Text    css=input[name="password"]    ${password}
    Input Text    css=input[name="confirm"]    ${password}
    Click Element    css=input[id="input-newsletter-yes"]
    Click Element    css=input[name="agree"]
    Click Element    css=input[value="Continue"]
