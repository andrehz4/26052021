*** Settings ***
Documentation      FASTSHOP - PRIME BOLETO
...                BOLETO - Obrigado por comprar na Fast Shop!


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
PRIME - PAGAR COM BOLETO 
    [Template]                  PRIME: Pagar um Boleto e copiar o número do codigo de barras

    [Tags]                      BOLETO_PAGO_PRIME                 PAGAMENTOS_IBM2       
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}     

         
*** Keywords ***
PRIME: Pagar um Boleto e copiar o número do codigo de barras
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}        
    CADASTRAR UM NOVO CLIENTE NO SITE DA FASTSHOP COMO PRIME PLUS                
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE FINALIZAÇÃO COM O BOLETO
    INICIO DO TESTE:    
    

    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}                            