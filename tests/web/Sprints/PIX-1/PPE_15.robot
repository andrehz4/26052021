*** Settings ***
Documentation      FASTSHOP - PIX PPE_15
...                A informação condição especial para PIX exibida no bloco Resumo do pedido , é uma regra definida pelo cadastro quando for aplicável. 


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test


*** Test Cases ***
SPRINT 1 - PIX[PPE015] WEBAPP
    [Template]                  Validação: Frase "COM O PIX" é exibida no resumo em condição especial
 
    [Tags]                      PPE15                       PIX_SPRINT_1
    #CPF                        #Senha                      #Nome                                                       
    56494978002                 12345678                    AEMQUE2BZABCOB              

         
*** Keywords ***
Validação: Frase "COM O PIX" é exibida no resumo em condição especial
    [Arguments]                                             ${cpf}        ${senha}        ${busca_produto}    

    BOOT INICIAL                                            ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO AO CARRINHO                           ${cpf}        ${senha}        ${busca_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    INICIO DO TESTE:
    REQUISITO 1 - CONDIÇÃO ESPECIAL EM PAGAMENTO EXIBE A FRASE "COM O PIX"
    FIM DO TESTE                                            ${cpf}        ${senha}        ${busca_produto}                

