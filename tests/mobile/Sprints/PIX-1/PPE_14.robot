*** Settings ***
Documentation      FASTSHOP - PIX PPE_14
...                Como cliente clico em “continuar” para dar sequência a jornada de compra assim que fiz a seleção da forma de pagamento (tratada no card https://jira.fastshop.com.br/browse/PPE-5 ) e então são fornecidas instruções para a opção “pagar com PIX” com alguns pontos de atenção.
...                Texto conforme UX:
...                Instruções para pagar com o Pix
...                1. Ao continuar, será gerada uma chave Pix e um QR Code para pagamento.
...                2. Para efetuar o pagamento, copie a chave Pix ou aponte a câmera do seu smartphone para QR Code.
...                3. Abra o site ou aplicativo do seu banco e selecione a opção pagar com Pix.
...                4. Após a transferência, você receberá por e-mail a confirmação da compra.
...                Atenção
...                -O prazo de validade da chave Pix é de 4 horas. Em caso de não pagamento o pedido será cancelado.
...                -O prazo de entrega começa a contar após a confirmação de pagamento.


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test


*** Test Cases ***
SPRINT 1 - PIX[PPE014] WEBAPP
    [Template]                  Validação: Instruções da compra com PIX são exibidas ao cliente e Resumo do pedido: Formas de pagamento PIX
 
    [Tags]                      PP                      PIX_SPR
    #CPF                        #Senha                      #Nome                                                       
    63240518970                 12345678                    AEMQUE2BZABCOB              

         
*** Keywords ***
Validação: Instruções da compra com PIX são exibidas ao cliente e Resumo do pedido: Formas de pagamento PIX
    [Arguments]                                             ${cpf}        ${senha}        ${busca_produto}    

    BOOT INICIAL                                            ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO AO CARRINHO                           ${cpf}        ${senha}        ${busca_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    TELA DE INSTRUÇÃO PARA CONFIRMAÇÃO COM O PIX
    INICIO DO TESTE:
    REQUISITO 1 - INTRUÇÕES DA COMPRA COM O PIX SÃO EXIBIDAS AO CLIENTE
    REQUISITO 2 - NO RESUMO: FORMA DE PAGAMENTO PIX É EXIBIDO AO CLIENTE
    REQUISITO 3 - EM PAGAMENTO: LOGO PIX E LOGO CIFRÃO SÃO EXIBIDOS AO CLIENTE
    FIM DO TESTE                                            ${cpf}        ${senha}        ${busca_produto}                

