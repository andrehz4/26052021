*** Settings ***
Documentation      FASTSHOP - SQUAD2-334
...				   Hoje na modalidade ClickCollect não é permitido compra de mais de um produto por SKU.
...				   Objetivo
...			       Precisamos travar a adição de mais de um produto no carrinho pela PDP na modalidade ClickCollect.
...			       Comportamento desejado
...			       Como cliente ao optar por adicionar a quantidade maior que 1 produto do mesmo SKU a opção de ClickCollect (Retirada em loja) deve ser ocultada, caso o usuário 
...                selecione apenas 1 ele seguira o fluxo de navegação ClickCollect. 

Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             60531429806
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             EXDB84X1
${QUANTIDADE_AMBIENTE}      1  
*** Test Cases ***
REGRESSÃO - VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE
    [Template]                  Regressão: VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE 

    [Tags]                      SQUAD2-321
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}     

REGRESSÃO - VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE 
    [Template]                  Regressão: VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE

    [Tags]                      SQUAD2-321
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}     

REGRESSÃO - VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP 
    [Template]                  Regressão: VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP

    [Tags]                      SQUAD2-321
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}              



*** Keywords ***
Regressão: VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE 
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE 
    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}

Regressão: VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE
    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}             

Regressão: VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP
    FIM DO TESTE                                                       ${cpf}        ${senha}        ${busca_produto}             
