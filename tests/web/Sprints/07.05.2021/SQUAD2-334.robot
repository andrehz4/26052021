*** Settings ***
Documentation      FASTSHOP - SQUAD2-344
...                SQUAD2-344 - +1 Produto na PDP (ClickCollect)
...                Histórico
...                Hoje na modalidade ClickCollect não é permitido compra de mais de um produto por SKU.
...                Objetivo
...                Precisamos travar a adição de mais de um produto no carrinho pela PDP na modalidade ClickCollect.
...                Comportamento desejado
...                Como cliente ao optar por adicionar a quantidade maior que 1 produto do mesmo SKU a opção de ClickCollect (Retirada em loja) deve ser ocultada, caso o usuário selecione apenas 1 ele seguira o fluxo de navegação ClickCollect. 
...                Criterio de Qualidade 
...                Caso o usuário selecionar mais de 1 produto do mesmo SKU deve-se ocultar o botao de ClickCollect.
...                Teste de Regressão 
...                Mudar o id para id="auto-click-collect-button" na seguinte Div  do botao (Devs)
...                Mudar o id para  i*d="auto-add-product-quantity*" no botao de quantidade  (Devs)
...                Validar se quando o usuario aumentar o contador para + de 1 sku do mesmo produto o botão ficará oculto (QA)
...                Validar se quando o usuario estiver com a contador com 1 sku do mesmo produto o botão o click collect deve ficar disponivel (QA)


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${CPF_AMBIENTE}             60531429806
${SENHA_AMBIENTE}           12345678 
${SKU_AMBIENTE}             ARB101CHOPPTO_PRD 
${QUANTIDADE_AMBIENTE}      1  

*** Test Cases ***
Regressão: Validar se quando o usuario aumentar o contador para + de 1 sku do mesmo produto o botão ficará oculto (QA)
    [Template]                  Regressão: Validar se quando o usuario aumentar o contador para + de 1 sku do mesmo produto o botão ficará oculto (QA) 

    [Tags]                      SQUAD2-334
    #CPF                        #Senha                      #Sku                #Quantidade                                                       
    ${CPF_AMBIENTE}             ${SENHA_AMBIENTE}           ${SKU_AMBIENTE}     ${QUANTIDADE_AMBIENTE}     



*** Keywords ***
Regressão: Validar se quando o usuario aumentar o contador para + de 1 sku do mesmo produto o botão ficará oculto (QA)
    [Arguments]                                                        ${cpf}        ${senha}        ${busca_produto}            ${quantidade_produto}    

    BOOT INICIAL                                                       ${cpf}        ${senha}        ${busca_produto}                            
    TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    VALIDAR AO AUMENTAR A QUANTIDADE DO PRODUTO O BOTÃO DE CLICK COLLECTION É OCULTADO
    FIM DO TESTE                                                        ${cpf}        ${senha}        ${busca_produto}
