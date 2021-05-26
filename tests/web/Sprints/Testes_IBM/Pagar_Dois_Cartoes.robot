*** Settings ***
Documentation      FASTSHOP - DOIS CARTÕES DE CRÉDITO
...                DOIS CARTÕES DE CRÉDITO - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             60531429806
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             EXDB84X1
${QUANTIDADE_AMBIENTE}      1
${NUMERO_DO_CC_1_AMBIENTE}  4220612154786956 
${VALIDADE_1_AMBIENTE}      1023
${CVV_DO_CC_1_AMBIENTE}     083 
${VALOR_DO_CC_1_AMBIENTE}   1000
${NUMERO_DO_CC_2_AMBIENTE}  5447318879391031 
${VALIDADECC2_AMBIENTE}     0224
${CVV_DO_CC_2_AMBIENTE}     528 
*** Test Cases ***
REGRESSÃO - PAGAR COM DOIS CARTÕES DE CRÉDITO 
    [Template]                  Regressão: Pagar com DOIS CARTÕES DE CRÉDITO e copiar o número da order

    [Tags]                      DOIS_CARTOES_DE_CREDITO_PAGO                    PAGAMENTOS_IBM
    #CPF               #Senha               #Sku               #Quantidade               #Número CC1                   #Validade CC1             #CVV do CC1                #Valor CC1                   #Número CC2                   #Validade CC2               #CVV do CC2                                                       
    ${CPF_AMBIENTE}    ${SENHA_AMBIENTE}    ${SKU_AMBIENTE}    ${QUANTIDADE_AMBIENTE}    ${NUMERO_DO_CC_1_AMBIENTE}    ${VALIDADE_1_AMBIENTE}    ${CVV_DO_CC_1_AMBIENTE}    ${VALOR_DO_CC_1_AMBIENTE}    ${NUMERO_DO_CC_2_AMBIENTE}    ${VALIDADECC2_AMBIENTE}     ${CVV_DO_CC_2_AMBIENTE}

         
*** Keywords ***
Regressão: Pagar com DOIS CARTÕES DE CRÉDITO e copiar o número da order
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}    ${quantidade_produto}    ${numero_cartao_de_credito_um}  ${validade_do_cartao_de_credito_um}  ${cvv_cartao_de_credito_um}  ${valor_cartao_de_credito_um}  ${numero_cartao_de_credito_dois}  ${validade_do_cartao_de_credito_dois}  ${cvv_cartao_de_credito_dois}

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                
    #ADICIONAR PRODUTO COM SERVIÇO DE INSTALAÇÃO AO CARRINHO            ${cpf}        ${senha}        ${busca_produto}    ${quantidade_produto}          
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO    ${cpf}        ${senha}        ${busca_produto}    ${quantidade_produto}   
    #ADICIONAR PRODUTO AO CARRINHO                                      ${cpf}        ${senha}        ${busca_produto}    ${quantidade_produto}
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE FINALIZAÇÃO COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    INICIO DO TESTE:    
    FIM DO TESTE                                                       ${cpf}        ${senha}        ${busca_produto}                
