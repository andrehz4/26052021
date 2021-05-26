*** Settings ***
Resource    base.robot
Resource    Helpers.robot
Resource    services.robot
Library	    Collections			
Library	    RequestsLibrary
Library     OperatingSystem

*** Keywords ***  
###################### FASTSHOP - ENTRAR NA HOME
ENTRAR NA HOME FASTSHOP E ACEITAR OS COOKIES 
    Delete All Cookies
    Go To                               ${BASE_URL}
    Wait Until Element Is Visible       ${ID_ACEITAR_COOKIES}                       30
    Click Element	                    ${ID_ACEITAR_COOKIES}
        Sleep                           1
    Log to console                      Dado - OK    "###TELA INICIAL"

TELA DE PAGAMENTO ACEITANDO OS COOKIES              
    Delete All Cookies
    Go To                               ${BASE_URL}web/checkout-v2/pagamento
    Wait Until Element Is Visible       ${ID_ACEITAR_COOKIES}                       30
    Click Element	                    ${ID_ACEITAR_COOKIES}
    Log to console                      @TELA DE PAGAMENTO ACESSADA COM SUCESSO. COOKIES FORAM ACEITOS, REDIRECIONANDO PARA O LOGIN.
    Capture Page Screenshot
        Sleep                           1

TELA DE BUSCA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    Delete All Cookies
    Go To                               ${BASE_URL}web/s/${busca_produto}
    Wait Until Element Is Visible       ${ID_ACEITAR_COOKIES}                       60
    Click Element	                    ${ID_ACEITAR_COOKIES}
    Log to console                      @TELA DE BUSCA DE PRODUTOS ACESSADA COM SUCESSO, COOKIES FORAM ACEITOS.
    Wait Until Element Is Visible       //a[@id='${busca_produto}']                 5                PRODUTO SEM PREÇO OU TEMPORARIAMENTE INDISPONIVEL             
        Set Focus To Element            //a[@id='${busca_produto}']
    #Capture Page Screenshot
    #Click Element                       //a[@id='${busca_produto}']
    #    Sleep                           3

TELA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    Delete All Cookies
    Go To                               ${BASE_URL}web/p/d/${busca_produto}/teste
    Wait Until Element Is Visible       ${ID_ACEITAR_COOKIES}                       60
    Click Element	                    ${ID_ACEITAR_COOKIES}
    Log to console                      @TELA DE PRODUTOS ACESSADA COM SUCESSO, COOKIES FORAM ACEITOS.
    Capture Page Screenshot
        Sleep                           1

TELA DE PRODUTOS ADICIONANDO UM PRODUTO AO CARRINHO E ACEITANDO OS COOKIES - ${busca_produto}
    Delete All Cookies
    Go To                               ${BASE_URL}web/p/d/${busca_produto}/teste
    Wait Until Element Is Visible       ${ID_ACEITAR_COOKIES}                       60
    Click Element	                    ${ID_ACEITAR_COOKIES}
    Log to console                      @TELA DE PRODUTOS ACESSADA COM SUCESSO, COOKIES FORAM ACEITOS.
    Capture Page Screenshot
        Sleep                           1
    Wait Until Element Is Visible       ${ID_ICONE_ADICIONAR_AO_CARRINHO}           20
    ${PRODUTO}=                         Get Text                                    ${H1_NOME_DO_PRODUTO}
    Set Global Variable                 ${PRODUTO}
    Log                                 ${PRODUTO}     
    Element Should Contain              ${H2_NOME_DO_PRODUTO}                       ${busca_produto} 
    Click Element	                    ${ID_ICONE_ADICIONAR_AO_CARRINHO} 
    Log to console                      Sku do teste: ${busca_produto}  
    Capture Page Screenshot


TELA LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha}
    Wait Until Element Is Visible       ${ID_LOGIN_CPF}                             30
    Input Text	                        ${ID_LOGIN_CPF}                             ${cpf}
    Input Text	                        ${ID_LOGIN_SENHA}                           ${senha}
    Click Element                       ${BUTTON_CONFIRMAR_VERDE} 
    Capture Page Screenshot
    Log to console                      CPF DO TESTE: ${cpf} 
    Log to console                      SENHA: ${senha}
    Log to console                      @LOGIN EFETUADO COM SUCESSO

#Pix
TELA DE PAGAMENTO COM O PIX
    Wait Until Element Is Visible       ${RADIO_BUTTON_PIX}                          60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO PIX ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${RADIO_BUTTON_PIX}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    #Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O PIX
    Capture Page Screenshot

TELA DE INSTRUÇÃO PARA CONFIRMAÇÃO COM O PIX
    Wait Until Element Is Visible       ${RADIO_BUTTON_PIX}                          60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO PIX ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${RADIO_BUTTON_PIX}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O PIX E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${ID_LOGO_PIX_TELA_PAGAMENTO}                 60
    Wait Until Element Is Visible       ${ID_ICONE_CIFRAO_TELA_PAGAMENTO} 
    Log to console                      @TELA DE INSTRUÇÃO DE PAGAMENTO COM O PIX
    Capture Page Screenshot

TELA DE FINALIZAÇÃO COM O PIX
    Wait Until Element Is Visible       ${RADIO_BUTTON_PIX}                          60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO PIX ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${RADIO_BUTTON_PIX}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O PIX E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${ID_LOGO_PIX_TELA_PAGAMENTO}                 60
    Wait Until Element Is Visible       ${ID_ICONE_CIFRAO_TELA_PAGAMENTO} 
    Log to console                      @TELA DE INSTRUÇÃO DE PAGAMENTO COM O PIX E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Click Element                       ${BUTTON_CONTINUAR_VERDE_FINALIZAR_COMPRA}     
    Wait Until Element Is Visible       ${ID_CHAVE_PIX}                               60            PROBLEMAS COM O PAGAMENTO PIX                         
    ${CODIGO_CHAVE_PIX}=                Get Text                                      ${ID_CHAVE_PIX}
    Capture Element Screenshot          ${DIV_CAMPO_CHAVE_PIX}
    Capture Element Screenshot          ${ID_QR_CODE}
    Log to console                      VALOR DA CAHVE PIX é: ${CODIGO_CHAVE_PIX}
     Wait Until Element Is Visible      ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}              60    
    Capture Element Screenshot	        ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Capture Page Screenshot             
    ${NUMERO_DA_ORDEM}=                 Get Text                                       ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Log to console                      ${NUMERO_DA_ORDEM}
    Log to console                      @SELECIONADO PAGAMENTO COM O PIX E AVANÇO DE TELA NO BOTÃO CONTINUAR

#Boleto
TELA DE PAGAMENTO COM O BOLETO
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_BOLETO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO BOLETO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_BOLETO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    #Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O BOLETO 
    Capture Page Screenshot

TELA DE INSTRUÇÃO PARA CONFIRMAÇÃO COM O BOLETO
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_BOLETO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO BOLETO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_BOLETO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O BOLETO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${DIV_TELA_CONFIRMACAO_BOLETO}                60
    Log to console                      @TELA DE INSTRUÇÃO DE PAGAMENTO COM O BOLETO

TELA DE FINALIZAÇÃO COM O BOLETO
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_BOLETO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO BOLETO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_BOLETO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O BOLETO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${DIV_TELA_CONFIRMACAO_BOLETO}                60
    Log to console                      @TELA DE INSTRUÇÃO DE PAGAMENTO COM O BOLETO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Click Element                       ${BUTTON_CONTINUAR_VERDE_FINALIZAR_COMPRA}     Wait Until Element Is Visible       ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}              120   
    Capture Element Screenshot	        ${DIV_CAMPO_NUMERO_CODIGO_BARRAS_BOLETO}
    Capture Page Screenshot              
    ${CODIGO_DE_BARRAS_BOLETO}=         Get Text                                      ${DIV_NUMERO_CODIGO_BARRAS_BOLETO}
    Log to console                      VALOR BOLETO é: ${CODIGO_DE_BARRAS_BOLETO}
    Capture Element Screenshot	        ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Capture Page Screenshot             
    ${NUMERO_DA_ORDEM}=                 Get Text                                                 ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Log to console                      ${NUMERO_DA_ORDEM}
    Log to console                      @SELECIONADO PAGAMENTO COM O BOLETO E AVANÇO DE TELA NO BOTÃO CONTINUAR


#Um Cartão
TELA INSERIR OS DADOS DO CARTÃO DE CRÉDITO
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO CARTÃO DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITO 
    Capture Page Screenshot

TELA INSERIR OS DADOS DO CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito}
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO CARTÃO DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        60
    Log to console                      @TELA DE PGAMENTO COM O CARTÃO DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                                ${validade_do_cartao_de_credito}                             
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                                ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO


TELA DE PARCELAMENTO COM O CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito} ${cvv_cartao_de_credito}
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO CARTÃO DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        60
    Log to console                      @TELA DE PGAMENTO COM O CARTÃO DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito}                             
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito} INSERIDOS

TELA DE FINALIZAÇÃO COM O CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    Wait Until Element Is Visible       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}                     60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO CARTÃO DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        60
    Log to console                      @TELA DE PGAMENTO COM O CARTÃO DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito}                             
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito}  
    Capture Page Screenshot
    Click Element                       ${BUTTON_CONTINUAR_VERDE_FINALIZAR_COMPRA}   
    Wait Until Element Is Visible       ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}                         60    
    Capture Element Screenshot	        ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Capture Page Screenshot             
    ${NUMERO_DA_ORDEM}=                 Get Text                                                 ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Log to console                      ${NUMERO_DA_ORDEM}
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito} INSERIDOS, BOTÃO DE FINALIZAR A COMPRA SELECIONADO PARA AVANÇAR DE TELA

#Dois cartões
TELA PAGAMENTO COM DOIS CARTÕES DE CRÉDITO
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot



TELA INSERIR OS DADOS COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um}
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM DOIS CARTÕES DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      @TELA DE PGAMENTO COM DOIS CARTÕES DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${LABEL_VALOR_PRIMEIRO_CARTAO}                           ${valor_cartao_de_credito_um}       
    Log to console                      VALOR NO PRIMEIRO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_um}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_um}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_um}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_um} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO


TELA PARCELAMENTO DO PRIMEIRO CARTÃO PAGANDO COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um}
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM DOIS CARTÕES DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      @TELA DE PGAMENTO COM DOIS CARTÕES DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${LABEL_VALOR_PRIMEIRO_CARTAO}                           ${valor_cartao_de_credito_um}       
    Log to console                      VALOR NO PRIMEIRO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_um}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_um}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_um}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_um} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_um}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_um} INSERIDOS
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO


TELA INSERIR OS DADOS DO SEGUNDO CARTÃO PAGANDO COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM DOIS CARTÕES DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      @TELA DE PGAMENTO COM DOIS CARTÕES DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${LABEL_VALOR_PRIMEIRO_CARTAO}                           ${valor_cartao_de_credito_um}       
    Log to console                      VALOR NO PRIMEIRO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_um}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_um}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_um}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_um} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_um}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_um} INSERIDOS
    Click Element                       ${BUTTON_IR_PARA_O_SEGUNDO_CARTAO}
    Log to console                      @DODOS DO PARCELAMENTO E CVV INSERIDOS, BOTÃO DE AVANÇAR PARA OS DADOS DO SEGUNDO CARTÃO.
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      VALOR NO SEGUNDO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_dois}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_dois}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_dois}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_dois} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO

TELA PARCELAMENTO DO SEGUNDO CARTÃO PAGANDO COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM DOIS CARTÕES DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      @TELA DE PGAMENTO COM DOIS CARTÕES DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${LABEL_VALOR_PRIMEIRO_CARTAO}                           ${valor_cartao_de_credito_um}       
    Log to console                      VALOR NO PRIMEIRO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_um}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_um}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_um}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_um} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_um}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_um} INSERIDOS
    Click Element                       ${BUTTON_IR_PARA_O_SEGUNDO_CARTAO}
    Log to console                      @DODOS DO PARCELAMENTO E CVV INSERIDOS, BOTÃO DE AVANÇAR PARA OS DADOS DO SEGUNDO CARTÃO.
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      VALOR NO SEGUNDO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_dois}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_dois}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_dois}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_dois} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_dois}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_dois} INSERIDOS
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO

TELA DE FINALIZAÇÃO COM DOIS CARTÕES DE CRÉDITO - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}               60
    Log to console                      RADIO BUTTON DE SELEÇÃO DE DOIS CARTÕES DE CRÉDITO ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Click Element                       ${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}     
    Log to console                      @SELECIONADO PAGAMENTO COM DOIS CARTÕES DE CRÉDITO E AVANÇO DE TELA NO BOTÃO CONTINUAR
    Capture Page Screenshot
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      @TELA DE PGAMENTO COM DOIS CARTÕES DE CRÉDITO, DADOS DO CARTÃO PARA SEREM INSERIDOS.
    Capture Page Screenshot            
    Input Text                          ${LABEL_VALOR_PRIMEIRO_CARTAO}                           ${valor_cartao_de_credito_um}       
    Log to console                      VALOR NO PRIMEIRO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}          
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_um}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_um}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_um}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_um} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_um}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_um} INSERIDOS
    Click Element                       ${BUTTON_IR_PARA_O_SEGUNDO_CARTAO}
    Log to console                      @DODOS DO PARCELAMENTO E CVV INSERIDOS, BOTÃO DE AVANÇAR PARA OS DADOS DO SEGUNDO CARTÃO.
    Wait Until Element Is Visible      ${LABEL_VALOR_PRIMEIRO_CARTAO}                            60
    Log to console                      VALOR NO SEGUNDO CARTÃO DE CRÉDITO É: ${valor_cartao_de_credito_um}         
    Input Text                          ${INPUT_NUMERO_CARTAO_DE_CREDITO}                        ${numero_cartao_de_credito_dois}       
    Log to console                      NÚMERO DO CARTÃO DE CRÉDITO É: ${numero_cartao_de_credito_dois}          
    Input Text                          ${INPUT_NOME_TITULAR_DO_CARTAO}                          WILLIAM MOORE DOIS HZ                                                              
    Log to console                      NOME DO TITULAR DO CARTÃO DE CRÉDITO É: WILLIAM MOORE DOIS HZ    
    Input Text                          ${INPUT_VALIDADE_DO_CARTAO}                              ${validade_do_cartao_de_credito_dois}                            
    Log to console                      VALIDADE DO CARTÃO DE CRÉDITO É: ${validade_do_cartao_de_credito_dois} 
    Input Text                          ${INPUT_CPF_TITULAR_CARTAO}                              ${cpf}                          
    Log to console                      CPF DO TITULAR DO CARTÃO DE CRÉDITO É: ${cpf}       
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Click Element                       ${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}
    Log to console                      @SELECIONADO PAGAMENTO COM O CARTÃO DE CRÉDITOS, DADOS INSERIDOS COM SUCESSO E AVANÇO PARA TELA DE PARCELAMENTO
    Wait Until Element Is Visible       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                   60
    Click Element                       ${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_LISTA_A_VISTA}                           60                         
    Click Element                       ${DIV_PAGAMENTO_LISTA_A_VISTA} 
    Log to console                      @SELECIONADO O VALOR A VISTA            
    Wait Until Element Is Not Visible   ${DIV_LOADER_ESPERA}                                     60            
    Input Text                          ${INPUT_CVV}                                             ${cvv_cartao_de_credito_dois}  
    Capture Page Screenshot
    Log to console                      @PARCELA E CVV: ${cvv_cartao_de_credito_dois} INSERIDOS
    Log to console                      @SELECIONADO PARCELAMENTO AVANÇO PARA COMCLUIR A COMPRA
    Capture Page Screenshot
    Click Element                       ${BUTTON_CONTINUAR_VERDE_FINALIZAR_COMPRA}   
    Wait Until Element Is Visible       ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}                         60    
    Capture Element Screenshot	        ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Capture Page Screenshot             
    ${NUMERO_DA_ORDEM}=                 Get Text                                                 ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    Log to console                      ${NUMERO_DA_ORDEM}


INICIO DO TESTE:
    Sleep                               1

##PPE5
REQUISITO 1 - LOGO PIX É EXIBIDO NA TELA DE PAGAMENTOS
    Wait Until Element Is Visible       ${ID_IMAGE_LOGOPIX_PAGAMENTO}               60
    Log to console                      LOGO PIX FOI EXIBIDO NA TELA DE PAGAMENTOS
    Capture Element Screenshot	        ${ID_IMAGE_LOGOPIX_PAGAMENTO}
    Capture Page Screenshot
 
REQUISITO 2 - LOGO CIFRÃO É EXIBIDO AO LADO DO RADIO BUTTON NA TELA DE PAGAMENTOS
    Wait Until Element Is Visible       ${ID_IMAGE_NOTA_DINHEIRO_ICONE}             60
    Log to console                      ICONE DE CIFRÃO FOI EXIBIDO AO LADO DO RADIO BUTTON NA TELA DE PAGAMENTOS
    Capture Element Screenshot	        ${ID_IMAGE_NOTA_DINHEIRO_ICONE}
    Capture Page Screenshot

REQUISITO 3 - AO SELECIONAR O RADIO BUTTON O BOTÃO CONTINUAR DEVE SER HABILITADO
    Wait Until Element Is Visible       ${RADIO_BUTTON_PIX}                         60
    Log to console                      RADIO BUTTON DE SELEÇÃO DO PIX ESTÁ PRESENTE NA TELA DE PAGAMENTOS
    Element Should Be Disabled          ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}                        
    Log to console                      BOTÃO CONTINUAR ESTÁ DESABILITADO
    Capture Element Screenshot	        ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}
    Capture Page Screenshot
    Click Element                       ${RADIO_BUTTON_PIX}
    Element Should Be Enabled           ${BUTTON_CONTINUAR_VERDE_PAGAMENTO} 
    Log to console                      BOTÃO CONTINUAR ESTÁ HABILITADO
    Capture Element Screenshot	        ${BUTTON_CONTINUAR_VERDE_PAGAMENTO}
    Capture Page Screenshot

##PPE14
REQUISITO 1 - INTRUÇÕES DA COMPRA COM O PIX SÃO EXIBIDAS AO CLIENTE
    Wait Until Element Is Visible       ${DIV_DESCRICAO_DA_COMPRA_COM_PIX}                60
    Log to console                      DESCRIÇÃO DA COMPRA COM O PIX FOI EXIBIDA AO CLIENTE
    Capture Element Screenshot	        ${DIV_DESCRICAO_DA_COMPRA_COM_PIX}
    Capture Page Screenshot

REQUISITO 2 - NO RESUMO: FORMA DE PAGAMENTO PIX É EXIBIDO AO CLIENTE
    Wait Until Element Is Visible       ${DIV_RESUMO_FORMA_DE_PAGAMENTO_PIX}              60
    Log to console                      NO RESUMO: FORMA DE PAGAMENTO PIX É EXIBIDO AO CLIENTE
    Capture Element Screenshot	        ${DIV_RESUMO_FORMA_DE_PAGAMENTO_PIX}
    Capture Page Screenshot

REQUISITO 3 - EM PAGAMENTO: LOGO PIX E LOGO CIFRÃO SÃO EXIBIDOS AO CLIENTE
    Wait Until Element Is Visible       ${ID_LOGO_PIX_TELA_PAGAMENTO}                     60
    Wait Until Element Is Visible       ${ID_ICONE_CIFRAO_TELA_PAGAMENTO} 
    Log to console                      EM PAGAMENTO: LOGO PIX E LOGO CIFRÃO SÃO EXIBIDOS AO CLIENTE
    Capture Element Screenshot	        ${ID_LOGO_PIX_TELA_PAGAMENTO}
    Capture Element Screenshot          ${ID_ICONE_CIFRAO_TELA_PAGAMENTO} 
    Capture Page Screenshot

#PPE15
REQUISITO 1 - CONDIÇÃO ESPECIAL EM PAGAMENTO EXIBE A FRASE "COM O PIX"
    Wait Until Element Is Visible       ${SPAN_CONDICAO_ESPECIAL_COM_PIX}                  60
    Log to console                      NO RESUMO: FORMA DE PAGAMENTO PIX É EXIBIDO AO CLIENTE
    Capture Element Screenshot	        ${SPAN_CONDICAO_ESPECIAL_COM_PIX}
    Capture Page Screenshot

#PPE4
REQUISITO 1 - TELA DE PEDIDO FINALIZADO: "PEDIDO REALIZADO COM SUCESSO" É EXIBIDA AO CLIENTE
    Wait Until Element Is Visible       ${DIV_COMPRA_FINALIZADA_SUCESSO_PIX}              60
    Log to console                      TELA DE PEDIDO FINALIZADO: "PEDIDO REALIZADO COM SUCESSO" É EXIBIDO AO CLIENTE
    Capture Element Screenshot	        ${DIV_COMPRA_FINALIZADA_SUCESSO_PIX}   
    Capture Page Screenshot

REQUISITO 2 - CHAVE PIX 
    Wait Until Element Is Visible       ${ID_CHAVE_PIX}                                     60
    Log to console                      CHAVE PIX É EXIBIDA AO CLIENTE
    Capture Element Screenshot	        ${ID_CHAVE_PIX} 
    Capture Page Screenshot
REQUISITO 3 - QRCODE
    Wait Until Element Is Visible       ${ID_QR_CODE}                                       60
    Log to console                      QRCODE EXIBIDO AO CLIENTE
    Capture Element Screenshot	        ${ID_QR_CODE} 

REQUISITO 4 - NOTIFICAÇÃO DE CHAVE PIX COPIADA É EXIBIDA AO CLIENTE
    Wait Until Element Is Visible       ${ID_BOTAO_COPIAR_CHAVE_PIX}                        60  
    Capture Element Screenshot	        ${ID_BOTAO_COPIAR_CHAVE_PIX}
    Capture Page Screenshot
    Log to console                      BOTÃO COPIAR É ACIONADO OBTENDO A CHAVE PIX NO VALOR: 
    Click Element                       ${ID_BOTAO_COPIAR_CHAVE_PIX}   
    Wait Until Element Is Visible       ${DIV_NOTIFICAÇÃO_CHAVE_COPIADA_COM_SUCESSO}        60
    Log to console                      NOTIFICAÇÃO DE CHAVE PIX COPIADA É EXIBIDA AO CLIENTE
    Capture Element Screenshot	        ${DIV_NOTIFICAÇÃO_CHAVE_COPIADA_COM_SUCESSO}
    Capture Page Screenshot

##SQUAD2-321
VALIDAR SE AO CLICAR NA IMAGEM DO CHAT A DIV SE EXPANDE 
    Wait Until Element Is Visible       ${ID_ICONE_CHATBLA_PDP}                             60    
        Set Focus To Element            ${ID_ICONE_CHATBLA_PDP}
    Capture Element Screenshot	        ${ID_ICONE_CHATBLA_PDP} 
    Capture Page Screenshot
    Log to console                      ICONE DO CHATBLA É EXIBIDO AO CLIENTE
        Sleep                           11
    Click Element                       ${ID_ICONE_CHATBLA_PDP} 
    Log to console                      AO CLICAR NO ICONE DO CHATBLA É EXIBIDO AO CLIENTE 
    Capture Page Screenshot

VALIDAR SE AO EXPANDIR É EXIBIDO UMA MENSAGEM AO CLIENTE
    Wait Until Element Is Visible       ${ID_ICONE_CHATBLA_PDP}                             60    
        Set Focus To Element            ${ID_ICONE_CHATBLA_PDP}
    Capture Element Screenshot	        ${ID_ICONE_CHATBLA_PDP} 
    Capture Page Screenshot
    Log to console                      ICONE DO CHATBLA É EXIBIDO AO CLIENTE
        Sleep                           11
    Click Element                       ${ID_ICONE_CHATBLA_PDP} 
    Log to console                      AO CLICAR NO ICONE DO CHATBLA É EXIBIDO AO CLIENTE A MENSAGEM EXPANDIDA
    Capture Page Screenshot

VALIDAR SE AO CLICAR NA MENSAGEM O CLIENTE É REDIRECIONADO PARA A TELA APP
    Wait Until Element Is Visible       ${ID_ICONE_CHATBLA_PDP}                             60    
        Set Focus To Element            ${ID_ICONE_CHATBLA_PDP}
    Capture Element Screenshot	        ${ID_ICONE_CHATBLA_PDP} 
    Capture Page Screenshot
    Log to console                      ICONE DO CHATBLA É EXIBIDO AO CLIENTE
        Sleep                           2
    Click Element                       ${P_MENSAGEM_CHATBLA_PDP} 
        Sleep                           10
    #Wait Until Page Contains Element    ${ID_HOTSITE_CHATBLA_APP}                            60 
    Log to console                      AO CLICAR NA MENSAGEM DO CHATBLA CLIENTE É REDIRECIONADO A TELA APP
    Capture Page Screenshot


DADO QUE ENTRO NO SITE PETZ PETZ BUSCA
    Delete All Cookies
    Go To                               www.globo.com
    Wait Until Element Is Visible       id:search                       30


QUANDO REALIZO UMA BUSCA ${busca_produto}
    Input Text	                        id:search                      ${busca_produto}
    Click Element	                    //button[@class='button-search']
    Capture Page Screenshot

VALIDAR AO AUMENTAR A QUANTIDADE DO PRODUTO O BOTÃO DE CLICK COLLECTION É OCULTADO
    Wait Until Element Is Visible       ${ID_BOTAO_CLICK_COLLECTION_PDP}                             60    
        Set Focus To Element            ${ID_BOTAO_CLICK_COLLECTION_PDP} 
                Sleep                   3
    Capture Element Screenshot	        ${ID_BOTAO_CLICK_COLLECTION_PDP}  
    Capture Page Screenshot
    Log to console                      ICONE CLICK COLECTION É EXIBIDO
    Click Element                       ${ID_AUMENTAR_A_QUANTIDADE_PDP} 
    Wait Until Element Is Not Visible   ${ID_BOTAO_CLICK_COLLECTION_PDP}                             3
    Log to console                      AO CLICAR EM AUMENTAR A QUANTIDADE O BOTÃO DE CLICK COLLECTION É OCULTADO
    Capture Page Screenshot

1 - FOTO E HORÁRIO DO SKU: ${busca_produto} - CLIQUE AQUI PARA EXIBIR AS EVIDÊNCIAS
    Capture Element Screenshot	        //a[@id='${busca_produto}']  
    Capture Page Screenshot
    Log to console                      EVIDÊNCIAS DO SKU: ${busca_produto} COLETADA COM SUCESSO.


- - - - ${busca_produto}         
    Click Element                       //a[@id='${busca_produto}']
    #Wait Until Element Is Not Visible   ${ID_COMPRAR_AGORA}                                        30

2 - FOTO E HORÁRIO DA PÁGINA DO PRODUTO: ${busca_produto} - CLIQUE AQUI PARA EXIBIR AS EVIDÊNCIAS 
    Capture Element Screenshot	        ${DIV_PRECO_PRODUTO_PDP} 
    Capture Page Screenshot
    Log to console                      EVIDÊNCIAS DO SKU: ${busca_produto} COLETADA COM SUCESSO.
