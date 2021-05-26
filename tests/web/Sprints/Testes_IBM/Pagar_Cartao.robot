*** Settings ***
Documentation      FASTSHOP - CARTÃO DE CRÉDITO
...                CARTÃO DE CRÉDITO - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             60531429806
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             EXDB84X1
${QUANTIDADE_AMBIENTE}      1
${NUMERO_DO_CC_AMBIENTE}    4220612154786956 
${DATA_VALIDADE_AMBIENTE}   1023
${CVV_DO_CC_AMBIENTE}       083     
*** Test Cases ***
REGRESSÃO - PAGAR COM CARTÃO DE CRÉDITO 
    [Template]                  Regressão: Pagar CARTÃO DE CRÉDITO e copiar o número da order

    [Tags]                      CARTAO_DE_CREDITO_PAGO      PAGAMENTOS_IBM                 
    #CPF                        #Senha                      #Sku                #Quantidade             Número CC                  #Validade do Cartão        #CVV DO CARTÃO DE CRÉDITO                                                      
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}  ${NUMERO_DO_CC_AMBIENTE}   ${DATA_VALIDADE_AMBIENTE}  ${CVV_DO_CC_AMBIENTE}       

         
*** Keywords ***
Regressão: Pagar CARTÃO DE CRÉDITO e copiar o número da order
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}   ${quantidade_produto}  ${numero_cartao_de_credito}  ${validade_do_cartao_de_credito}  ${cvv_cartao_de_credito}

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                
    #ADICIONAR PRODUTO COM SERVIÇO DE INSTALAÇÃO AO CARRINHO            ${cpf}        ${senha}        ${busca_produto}   ${quantidade_produto}          
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO    ${cpf}        ${senha}        ${busca_produto}   ${quantidade_produto}   
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}   ${quantidade_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE FINALIZAÇÃO COM O CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    INICIO DO TESTE:    
    FIM DO TESTE                                                       ${cpf}        ${senha}        ${busca_produto}                
