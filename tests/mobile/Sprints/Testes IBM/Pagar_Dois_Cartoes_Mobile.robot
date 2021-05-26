*** Settings ***
Documentation      FASTSHOP - DOIS CARTÕES DE CRÉDITO
...                DOIS CARTÕES DE CRÉDITO - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/app/android.robot
Resource           ../../../../resources/app/app_elements.robot
Resource           ../../../../resources/mobile_sprints_hz.robot
Resource           ../../../../resources/mobile_services_sprints.robot
Test Setup         Abrir app
Test Teardown      Fechar app


*** Test Cases ***
REGRESSÃO - PAGAR COM DOIS CARTÕES DE CRÉDITO 
    [Template]                  Regressão: Pagar com DOIS CARTÕES DE CRÉDITO e copiar o número da order

    [Tags]                      MOBILE_DOIS_CARTOES_DE_CREDITO_PAGO                   PAGAMENTOS_IBM_MOBILE    
    #CPF                        #Senha                      #Sku                      #Número CC1                #Validade CC1            #CVV do CC1     #Valor CC1       #Número CC2                #Validade CC2            #CVV do CC2                                                       
    63240518970                 12345678                    AEMQUE2BZABCOB            4220612154786956           1023                     083             1000             5447318879391031           0224                     528

         
*** Keywords ***
Regressão: Pagar com DOIS CARTÕES DE CRÉDITO e copiar o número da order
    [Arguments]                                                               ${cpf}        ${senha}        ${busca_produto}    ${numero_cartao_de_credito_um}  ${validade_do_cartao_de_credito_um}  ${cvv_cartao_de_credito_um}  ${valor_cartao_de_credito_um}  ${numero_cartao_de_credito_dois}  ${validade_do_cartao_de_credito_dois}  ${cvv_cartao_de_credito_dois}

    BOOT MOBILE INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO MOBILE    ${cpf}        ${senha}        ${busca_produto}   
    #ADICIONAR PRODUTO AO CARRINHO MOBILE                                      ${cpf}        ${senha}        ${busca_produto}                           
    TELA MOBILE LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha} 
    TELA DE FINALIZAÇÃO COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    INICIO DO TESTE MOBILE:
    FIM DO MOBILE TESTE                                                       ${cpf}        ${senha}        ${busca_produto}             
