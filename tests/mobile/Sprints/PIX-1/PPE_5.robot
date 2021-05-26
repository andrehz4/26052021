*** Settings ***
Documentation      FASTSHOP - PIX PPE_5
...                1) Como cliente Fastshop, escolho o produto desejado e dou sequência para compra como no fluxo já existente. 
...                Chego na etapa de pagamento e então são dadas as opções onde teremos “pagar com PIX”.
...                2) Enquanto nenhuma opção for selecionada, o botão de “continuar” deve ficar inativo para que eu não prossiga em 
...                minha jornada. Dado que a opção “pagar com PIX” tenha sido selecionada (assim como qualquer outro método de pagamento), 
...                o botão “continuar” se torna ativo para seguir. Caso eu não clique em "continuar" e não selecionei nenhuma 
...                opção de pagamento, é apresentada a mensagem " Selecione um forma de pagamento." em caixa de diálogo preta (Nav bar)


Resource           ../../../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test


*** Test Cases ***
SPRINT 1 - PIX[PPE005] WEBAPP
    [Template]                  Validação: Imagem cifrão, Imagem Pix e Radio button: Ao selecionar habilitar o botão continuar  
    [Tags]                      P5                        PIX_SPRI
    #CPF                        #Senha                      #Nome                                                       
    63240518970                 12345678                    AEMQUE2BZABCOB              

         
*** Keywords ***
Validação: Imagem cifrão, Imagem Pix e Radio button: Ao selecionar habilitar o botão continuar 
    [Arguments]                                             ${cpf}        ${senha}        ${busca_produto}    

    BOOT INICIAL                                            ${cpf}        ${senha}        ${busca_produto}                
    ADICIONAR PRODUTO AO CARRINHO                           ${cpf}        ${senha}        ${busca_produto}   
    TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    INICIO DO TESTE:
    REQUISITO 1 - LOGO PIX É EXIBIDO NA TELA DE PAGAMENTOS
    REQUISITO 2 - LOGO CIFRÃO É EXIBIDO AO LADO DO RADIO BUTTON NA TELA DE PAGAMENTOS
    REQUISITO 3 - AO SELECIONAR O RADIO BUTTON O BOTÃO CONTINUAR DEVE SER HABILITADO
    FIM DO TESTE                                            ${cpf}        ${senha}        ${busca_produto}                
