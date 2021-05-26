*** Settings ***
Documentation      FASTSHOP - BOLETO
...                BOLETO - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             83972460538
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             EXDB84X1
${QUANTIDADE_AMBIENTE}      2  
*** Test Cases ***
REGRESSÃO - PAGAR COM BOLETO 
    [Template]                  Regressão: Pagar um Boleto e copiar o número do codigo de barras
    
    [Tags]                      PRIME_PAGO                  PAGAMENTOS_IBM2       
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}       

         
*** Keywords ***
Regressão: Pagar um Boleto e copiar o número do codigo de barras
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    CADASTRAR UM NOVO CLIENTE NO SITE DA FASTSHOP COMO PRIME PLUS   
    #ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO    ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}                          
     