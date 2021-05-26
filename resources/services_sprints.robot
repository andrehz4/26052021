*** Settings ***
Library	    Collections			
Library	    RequestsLibrary
Library     OperatingSystem
Library     lib/cortar_endereco.py

Resource    Helpers.robot
Resource    base.robot

*** Variables ***
${base_url}     https://apiqa.fastshop.com.br
                #https://apiqa.fastshop.com.br
                #https://apiqa.fastshop.com.br
                #https://www.fastshop.com.br]                         


*** Keywords ***
### /sessions
Sprints Post Session
    [Arguments]     ${payload}

    &{headers}=	    Create Dictionary	Content-Type=application/json

    ${resp}=	    Post Request     FastShop      /fastshop-qa/wcs/resources/v1/auth/login     data=${payload}     headers=${headers}
    [return]        ${resp}
    Log             ${payload} 
    Log             ${headers}
    Log             ${resp} 



BOOT INICIAL                  
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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

BOOT MOBILE INICIAL                  
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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


FIM DO TESTE                    
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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

FIM DO TESTE OK                    
    Log to console                      TESTE FINALIZADO


### create
CADASTRAR UM NOVO CLIENTE NO SITE DA FASTSHOP COMO PRIME PLUS
### create
#Cadastro criar um usuario com sucesso
    #Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${CPF}                              FakerLibrary.cpf  
    ${NOMEFAKE}                         FakerLibrary.Name
    ${TELEFONEFAKE}                     FakerLibrary.Phone Number
    ${PALAVRAFAKE}                      FakerLibrary.Word 
    ${PASSWORDFAKE}                     FakerLibrary.Password 
    ${NUMEROFAKE}                       FakerLibrary.Random Number
    &{headers}=	                        Create Dictionary	Connection=Connection       User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36       Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp      
    ${CPF_VALIDO}=                      Convert To String   ${CPF[0:3]}${CPF[4:7]}${CPF[8:11]}${CPF[12:]}
    ${EMAIL_VALIDO}=                    Convert To String   ${PALAVRAFAKE}_${NUMEROFAKE}_hz@fastshopteste.com.br 
    ${payload}=                         Convert To Json     {"document":"${CPF_VALIDO}","name":"${NOMEFAKE}","birthday":"1985-06-03","gender":"Male","tradeName":"","companyName":"","ie":"","telephone":"(11) 987488195","cellphone":"(11) 987488195","email":"${EMAIL_VALIDO}","password":"12345678","receiveEmailFast":true,"receiveSMSFast":true,"receiveEmailOthers":true,"cpf":"${CPF_VALIDO}","emailVerify":"${EMAIL_VALIDO}","passwordVerify":"12345678","zipCode":"07110040","streetName":"R R MARIA DE CASTRO MESQUITA","number":"84","complement":"56","district":"JARDIM SAO PAULO","city":"GUARULHOS","state":"SP","housingType":"2","country":"Brasil"}
    Log                                 ${payload}

    ${resp}=	                        Post Request            FastShop       /fastshop-qa/wcs/resources/v1/customer/create       data=${payload}     headers=${headers}     
    
    Log to console                      ${resp.status_code}
    Log to console                      ${payload}
    Log to console                      ${CPF_VALIDO}
    Log to console                      ${EMAIL_VALIDO}
    Log                                 ${CPF_VALIDO}
    Log                                 ${EMAIL_VALIDO}
    Should Be Equal As Strings          ${resp.status_code}  201

###Criar uma conta prime plus
    ###Login

    ${payload}=                         Convert To Json         {"document":"${CPF_VALIDO}","password":"12345678"}
    Log                                 ${payload}
    ${resp}=                            Sprints Post Session    ${payload}
    Should Be Equal As Strings          ${resp.status_code}     201
    ${WCToken}=                         Convert To String       ${resp.json()['WCToken']}
    
    Log                                 ${payload}
    ${WCTrustedToken}=                  Convert To String       ${resp.json()['WCTrustedToken']}

    Log                                 ${WCTrustedToken}
    ${userID}=                          Convert To String       ${resp.json()['userID']}
    Log                                 ${userID}

    ###Criar o Prime Plus
    &{headers}=	                        Create Dictionary	    Connection=keep-alive       WCTrustedToken=${WCTrustedToken}        User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36    userAgent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36   WCToken=${WCToken}      Content-Type=application/json       Accept=application/json, text/plain, */*        checkout-api-version=v1     channel=webapp       storeId=10151      ip=172.84.04                                                                    
    ${payload}=                         Convert To Json         {"email":"${PALAVRAFAKE}_${NUMEROFAKE}_hz@fastshopteste.com.br","planId":"17914","productId":"72905","cardNumber":"5555555555555557","holderName":"teste teste","expireDate":"01/2022","document":"${CPF_VALIDO}","cvv":"123"} 
    ${resp}=	                        Post Request            FastShop       /prime/subscription       data=${payload}     headers=${headers}     
    Log to console                      ${resp.status_code}
    Log to console                      '###################  
    Log to console                      @@@CPF: ${CPF_VALIDO} 
    Log to console                      @@@SENHA: 12345678
    Log to console                      '################### PRIME PLUS     
    Log to console                      '################### PRIME PLUS
    Should Be Equal As Strings          ${resp.status_code}     200
 

ADICIONAR PRODUTO AO CARRINHO   

    [Arguments]                         ${cpf}          ${senha}            ${busca_produto}            ${quantidade_produto}         

    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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
    ${payload}=                         Convert To Json         [{"sku":"${busca_produto}","quantity":${quantidade_produto},"partner":"","campaign":""}]
    Log                                 ${payload}   
    #1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP
    ${resp}=	                        Post Request            FastShop                    /fastshop-qa/checkout/cart/addListItem  data=${payload}     headers=${headers}     
    Should Be Equal As Strings          ${resp.status_code}     200
    Log to console                      "#1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP >>>>>>>"${resp.status_code}  

ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO   

    [Arguments]                         ${cpf}          ${senha}            ${busca_produto}            ${quantidade_produto}         

    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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
    ${payload}=                         Convert To Json         [{"sku":"${busca_produto}","quantity":${quantidade_produto},"partner":"","campaign":""},{"quantity":1,"sku":"GX${busca_produto}-${busca_produto}","productSku":"${busca_produto}","type":"WARRANTY","isClickCollect":false}]
    Log                                 ${payload}   
    #1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP
    ${resp}=	                        Post Request            FastShop                    /fastshop-qa/checkout/cart/addListItem  data=${payload}     headers=${headers}     
    Should Be Equal As Strings          ${resp.status_code}     200
    Log to console                      "#1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP >>>>>>>"${resp.status_code}  
 
ADICIONAR PRODUTO COM SERVIÇO DE INSTALAÇÃO AO CARRINHO   

    [Arguments]                         ${cpf}          ${senha}            ${busca_produto}            ${quantidade_produto}         

    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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
    ${payload}=                         Convert To Json         [{"sku":"${busca_produto}","quantity":${quantidade_produto},"partner":"","campaign":""},{"quantity":${quantidade_produto},"sku":"GIREFRIG_GDE","productSku":"${busca_produto}","installDate":"2021-04-30","installPeriod":"Tarde","type":"INSTALLATION"}]
    Log                                 ${payload}   
    #1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP
    ${resp}=	                        Post Request            FastShop                    /fastshop-qa/checkout/cart/addListItem  data=${payload}     headers=${headers}     
    Should Be Equal As Strings          ${resp.status_code}     200
    Log to console                      "#1-ADICIONAR PRODUTO NO CARRINHO FASTSHOP >>>>>>>"${resp.status_code}  



ZEND                  
    [Arguments]                         ${cpf}    ${senha}    ${busca_produto} 
    
    Create Session	                    FastShop	        https://apiqa.fastshop.com.br
    ${payload}=                         Convert To Json     {"document":"${cpf}","password":"${senha}"}
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