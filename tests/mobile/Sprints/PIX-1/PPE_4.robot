*** Settings ***
Documentation      FASTSHOP - PIX PPE_4
...                Ao clicar em “finalizar compra” (tratado no card https://jira.fastshop.com.br/browse/PPE-14 ) aparecerá a tela abaixo com a mensagem de “Pedido realizado com sucesso!” com as informações de pagamento via PIX junto aos dados do produto, QR code e código chave que deverá ter a função de copiar/colar automatizada ao clicar no botão “copiar código”. Visto isso dou procedência em meu aplicativo do banco onde a Fastshop já não possui mais ação. 
...                Ao copiar o código é exibido a mensagem "código copiado com sucesso"  e exibido o link de fechar a mensagem.


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test


*** Test Cases ***
SPRINT 1 - PIX[PPE004] WEBAPP
    [Template]                  Validação: Tela pedido finalizado: “Pedido realizado com sucesso!”, Chave PIX, QR CODE e Função copiar colar da chave: Alerta é exibido 
    [Tags]                      P                        PIX_SPR
    #CPF                        #Senha                      #Nome                                                       
    63240518970                 12345678                    AEMTEY2BZAPTAB              

         
*** Keywords ***
Validação: Tela pedido finalizado: “Pedido realizado com sucesso!”, Chave PIX, QR CODE e Função copiar colar da chave: Alerta é exibido
    [Arguments]                                             ${cpf}        ${senha}        ${busca_produto}    

    BOOT INICIAL                                            ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO AO CARRINHO                           ${cpf}        ${senha}        ${busca_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE FINALIZAÇÃO COM O PIX
    INICIO DO TESTE:    
    REQUISITO 1 - TELA DE PEDIDO FINALIZADO: "PEDIDO REALIZADO COM SUCESSO" É EXIBIDA AO CLIENTE
    REQUISITO 2 - CHAVE PIX 
    REQUISITO 3 - QRCODE
    REQUISITO 4 - NOTIFICAÇÃO DE CHAVE PIX COPIADA É EXIBIDA AO CLIENTE
    FIM DO TESTE                                            ${cpf}        ${senha}        ${busca_produto}                
