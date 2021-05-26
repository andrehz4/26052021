*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     Collections
#Library     ScreenCapLibrary
Library     FakerLibrary    locale=pt_BR
Resource    elements.robot
Resource    services.robot
Resource    setup_hz.robot
Resource    sprints_hz.robot
Resource    services_sprints.robot


*** Variables ***
${BASE_AMBIENTE}    qa
${BASE_URL}         http://webapp2-${BASE_AMBIENTE}.fastshop.com.br/
${OPTIONS}          add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox"); add_experimental_option('excludeSwitches', ['enable-logging'])

*** Keywords ***
Start Session
    #Open Browser                        about:blank     ${BROWSER}   remote_url=http://192.168.15.47:4444/wd/hub
    #Create Session	                     FastShop	        https://apiqa.fastshop.com.br
    Open Browser                         about:blank    ${BROWSER}   options=${OPTIONS}  #add_experimental_option('excludeSwitches', ['enable-logging'])
    Set Selenium Implicit Wait           20
    Set Window Size                      1600    1900
    Maximize Browser Window	    
    #Start Video Recording
Start Gif Recording

End Session
    Close Browser
    #FIM DO TESTE    cpf    senha    busca_produto
    #Stop Video Recording
    #Stop Gif Recording

End Test
    Capture Page Screenshot	
    
    
End Test product
    Capture Page Screenshot	
    ${OPTIONS}=                         Get Text                                    add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox")
    Set Global Variable                 ${OPTIONS}