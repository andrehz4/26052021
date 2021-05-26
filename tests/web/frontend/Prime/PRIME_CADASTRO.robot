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
PRIME CADASTRO
    [Template]                  Cadastrar um cliente PRIME PLUS
    
    [Tags]                      PRIME_PAGO                  PRIME_CADASTRO       
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}       

         
*** Keywords ***
Cadastrar um cliente PRIME PLUS
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    CADASTRAR UM NOVO CLIENTE NO SITE DA FASTSHOP COMO PRIME PLUS   

    