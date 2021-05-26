*** Settings ***
Documentation      FASTSHOP - PIX MOBILE
...                PIX - Obrigado por comprar na Fast Shop!


Resource           ../../../../resources/app/android.robot
Resource           ../../../../resources/app/app_elements.robot
Resource           ../../../../resources/mobile_sprints_hz.robot
Resource           ../../../../resources/mobile_services_sprints.robot
Test Setup         Abrir app
Test Teardown      Fechar app

*** Test Cases ***
REGRESSÃO - PAGAR COM PIX NO MOBILE
    [Template]                  Regressão: Pagar um Pix no mobile e copiar o número do codigo de barras

    [Tags]                      MOBILE_PIX_PAGO             PAGAMENTOS_IBM_MOBILE           
    #CPF                        #Senha                      #Sku                                                       
    63240518970                 12345678                    AEMQUE2BZABCOB              

         
*** Keywords ***
Regressão: Pagar um Pix no mobile e copiar o número do codigo de barras
    [Arguments]                                                               ${cpf}        ${senha}        ${busca_produto}    

    BOOT MOBILE INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO COM SERVIÇO DE GARANTIA ESTENDIDA AO CARRINHO MOBILE    ${cpf}        ${senha}        ${busca_produto}   
    #ADICIONAR PRODUTO AO CARRINHO MOBILE                                      ${cpf}        ${senha}        ${busca_produto} 
    TELA CARRINHO MOBILE                        
    TELA MOBILE LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha} 
    TELA DE FINALIZAÇÃO DE PAGAMENTO COM O PIX NO MOBILE
    INICIO DO TESTE MOBILE:
    FIM DO MOBILE TESTE                                                       ${cpf}        ${senha}        ${busca_produto}                
