*** Settings ***
Documentation      FASTSHOP - SQUAD2-321
...                SQUAD2-321 - Ícone e mensagem de dúvidas na PDP
...                Objetivo: Manter ícone do Webapp e alterar mensagem de dúvidas na PDP
...                Comportamento: 
...                Como cliente Fast Shop quando entro na PDP me deparo com a mensagem expandida e após 10 segundos fecha automaticamente, ficando somente visível o ícone.
...                Dado que clico na mensagem sou direcionada para tela de baixar os apps conforme comportamento atual. 
...                Alterar texto dentro do ícone
...                Como é hoje:
...                Dúvidas na hora de comprar?
...                Clique aqui e fale agora com um vendedor online.
...                Ponto de Atenção: Manter ícone existente 


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
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE 
    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}

Regressão: VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE
    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}             

Regressão: VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}   
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP
    FIM DO TESTE                                                       ${cpf}        ${senha}        ${busca_produto}             
