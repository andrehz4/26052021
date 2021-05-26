*** Settings ***
Documentation      FASTSHOP - CARTÃO DE CRÉDITO
...                CARTÃO DE CRÉDITO - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/app/android.robot
Resource           ../../../../resources/app/app_elements.robot
Resource           ../../../../resources/mobile_sprints_hz.robot
Resource           ../../../../resources/mobile_services_sprints.robot
Test Setup         Abrir app
Test Teardown      Fechar app


*** Test Cases ***
REGRESSÃO - PAGAR COM CARTÃO DE CRÉDITO 
    [Template]                  Regressão: Pagar CARTÃO DE CRÉDITO no mobile e copiar o número da order

    [Tags]                      MOBILE_CARTAO_DE_CREDITO_PAGO                         PAGAMENTOS_IBM_MOBILE                 
    #CPF                        #Senha                      #Sku                      #Número CC              #Validade do Cartão        #CVV DO CARTÃO DE CRÉDITO                                                      
    63240518970                 12345678                    AEMQUE2BZABCOB            4220612154786956        1023                       083     

         
*** Keywords ***
Regressão: Pagar CARTÃO DE CRÉDITO no mobile e copiar o número da order
    [Arguments]                                                               ${cpf}        ${senha}        ${busca_produto}    ${numero_cartao_de_credito}  ${validade_do_cartao_de_credito}  ${cvv_cartao_de_credito}

    BOOT MOBILE INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO MOBILE    ${cpf}        ${senha}        ${busca_produto}   
    #ADICIONAR PRODUTO AO CARRINHO MOBILE                                      ${cpf}        ${senha}        ${busca_produto} 
    TELA MOBILE LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha} 
    TELA DE FINALIZAÇÃO COM O CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    INICIO DO TESTE MOBILE:
    FIM DO MOBILE TESTE                                                       ${cpf}        ${senha}        ${busca_produto}  