*** Settings ***
Library	    Collections			
Library	    RequestsLibrary
Library     OperatingSystem
Library     lib/cortar_endereco.py


*** Variables ***
${base_url}     https://apiqa.fastshop.com.br
                #https://apiqa.fastshop.com.br
                #https://apiqa.fastshop.com.br
                #https://www.fastshop.com.br]                         


*** Keywords ***
### /sessions
*** Keywords ***
### Helpers
Mobile Convert To Json
    [Arguments]     ${target}

    ${result}=      evaluate        json.loads($target)     json
    [return]        ${result}


Sprints Post Session
    [Arguments]     ${payload}

    &{headers}=	    Create Dictionary	Content-Type=application/json

    ${resp}=	    Post Request     FastShop      /fastshop-qa/wcs/resources/v1/auth/login     data=${payload}     headers=${headers}
    [return]        ${resp}
    Log             ${payload} 
    Log             ${headers}
    Log             ${resp} 



BOOT MOBILE INICIAL                  
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Mobile Convert To Json     {"document":"${cpf}","password":"${senha}"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session        ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String   ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String   ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String   ${resp.json()['userID']}

    Log                                 ${userID}
    &{headers}=	                        Create Dictionary	storeId=${userID}       WCToken=${WCToken}               WCTrustedToken=${WCTrustedToken}        Connection=Connection       User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36       Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp      
    ${resp}=	                          Delete Request         FastShop      /fastshop-qa/checkout/cart/${busca_produto}    data=${payload}     headers=${headers}     
    Log to console                      ${resp}   
    Log to console                      Abrir Aplcativo Fastshop


FIM DO MOBILE TESTE                    
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Mobile Convert To Json     {"document":"${cpf}","password":"${senha}"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session        ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String   ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String   ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String   ${resp.json()['userID']}

    Log                                 ${userID}
    &{headers}=	                        Create Dictionary	storeId=${userID}       WCToken=${WCToken}               WCTrustedToken=${WCTrustedToken}        Connection=Connection       User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36       Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp      
    ${resp}=	                          Delete Request         FastShop      /fastshop-qa/checkout/cart/${busca_produto}    data=${payload}     headers=${headers}     
    Log to console                      ${resp}   




ADICIONAR PRODUTO AO CARRINHO MOBILE   

    [Arguments]                         ${cpf}          ${senha}            ${busca_produto}            ${quantidade_produto}         

    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Mobile Convert To Json     {"document":"${cpf}","password":"${senha}"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session        ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String   ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String   ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String   ${resp.json()['userID']}
    Log                                 ${userID}


    &{headers}=	                        Create Dictionary	    Connection=keep-alive       WCTrustedToken=${WCTrustedToken}        User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36    userAgent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36   WCToken=${WCToken}      Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp       storeId=10151      ip=172.84.04                                                                    
    ${payload}=                         Mobile Convert To Json         [{"sku":"${busca_produto}","quantity":${quantidade_produto},"partner":"","campaign":""}]
    Log                                 ${payload}   
    #1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP
    ${resp}=	                        Post Request            FastShop                    /fastshop-qa/checkout/cart/addListItem  data=${payload}     headers=${headers}     
    Should Be Equal As Strings          ${resp.status_code}     200
    Log to console                      "#1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP >>>>>>>"${resp.status_code}  
 
ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO MOBILE   

    [Arguments]                         ${cpf}          ${senha}            ${busca_produto}            ${quantidade_produto}         

    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Mobile Convert To Json     {"document":"${cpf}","password":"${senha}"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session        ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String   ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String   ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String   ${resp.json()['userID']}
    Log                                 ${userID}


    &{headers}=	                        Create Dictionary	    Connection=keep-alive       WCTrustedToken=${WCTrustedToken}        User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36    userAgent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36   WCToken=${WCToken}      Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp       storeId=10151      ip=172.84.04                                                                    
    ${payload}=                         Mobile Convert To Json     [{"sku":"${busca_produto}","quantity":${quantidade_produto},"partner":"","campaign":""},{"quantity":1,"sku":"GX${busca_produto}-${busca_produto}","productSku":"${busca_produto}","type":"WARRANTY","isClickCollect":false}]
    Log                                 ${payload}   
    #1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP
    ${resp}=	                        Post Request            FastShop                    /fastshop-qa/checkout/cart/addListItem  data=${payload}     headers=${headers}     
    Should Be Equal As Strings          ${resp.status_code}     200
    Log to console                      "#1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP >>>>>>>"${resp.status_code}  
 

 

ZEND MOBILE                 
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Mobile Convert To Json     {"document":"${cpf}","password":"${senha}"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session        ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String   ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String   ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String   ${resp.json()['userID']}

    Log                                 ${userID}
    &{headers}=	                        Create Dictionary	storeId=${userID}       WCToken=${WCToken}               WCTrustedToken=${WCTrustedToken}        Connection=Connection       User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36       Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp      
    ${resp}=	                        Delete Request         FastShop      /fastshop-qa/checkout/cart/${busca_produto}    data=${payload}     headers=${headers}     
    Log to console                      ${resp}  