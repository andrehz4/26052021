*** Settings ***
Documentation      FASTSHOP - PIX
...                PIX - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             83972460538
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             EXDB84X1
${QUANTIDADE_AMBIENTE}      1  
*** Test Cases ***
REGRESSÃO - PAGAR COM PIX 
    [Template]                  Regressão: Pagar um Pix e copiar o número do codigo de barras

    [Tags]                      PIX_PAGO                    PAGAMENTOS_IBM  
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}                   

         
*** Keywords ***
Regressão: Pagar um Pix e copiar o número do codigo de barras
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}        ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}               
    #ADICIONAR PRODUTO COM SERVIÇO DE INSTALAÇÃO AO CARRINHO            ${cpf}        ${senha}        ${busca_produto}        ${quantidade_produto}    
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO    ${cpf}        ${senha}        ${busca_produto}      ${quantidade_produto}    
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE FINALIZAÇÃO COM O PIX
    INICIO DO TESTE:    
    FIM DO TESTE                                                       ${cpf}        ${senha}        ${busca_produto}                
