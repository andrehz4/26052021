*** Settings ***
Resource    ../resources/app/android.robot
Resource    ../resources/app/app_elements.robot
Resource    ../resources/mobile_hz.robot


*** Keywords ***  
###################### FASTSHOP - LOGIN ANDROID COM SUCESSO
TELA CARRINHO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_ICONE_CARRINHO_TELA_INICIAL}                       30
    Click Element	                    ${BUTTON_ICONE_CARRINHO_TELA_INICIAL}
    Log to console                      @CLIQUE NO ICONE DE CARRINHO NA TELA INICIAL, REDIRECIONANDO PARA O LOGIN.
    Capture Page Screenshot
        Sleep                           1

TELA MOBILE LOGIN COM CPF E SENHA CORRETOS - ${cpf} ${senha} 
    Wait Until Element Is Visible            ${INFORMAR_CPF}                   60           
    Input Text	                             ${INFORMAR_CPF}                   ${cpf}
    Wait Until Element Is Visible            ${INFORMAR_SENHA}
    Input Text	                             ${INFORMAR_SENHA}                 ${senha}
    Wait Until Element Is Visible            ${BUTTON_ENTRAR}                  60
    Click Element                            ${BUTTON_ENTRAR}
    Log to console                           @USUARIO LOGADO, SEGUINDO PARA CARRINHO

TELA ENTREGA MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO
    Capture Page Screenshot

TELA FORMA DE PAGAMENTO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO

TELA ESCOLHA A FORMA DE PAGAMENTO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_PIX}            60
    Capture Page Screenshot


###PIX
TELA FORMA DE PAGAMENTO COM O PIX NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_PIX}            60
    Capture Page Screenshot      

TELA RESUMO DE PAGAMENTO COM O PIX NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_PIX}            60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_COM_PIX}     
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O PIX PARA AVANÇAR A TELA DE FINALIZAR O PEDIDO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_PIX}         60
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO

TELA DE FINALIZAÇÃO DE PAGAMENTO COM O PIX NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}                60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                     60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_PIX}                        60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_COM_PIX}     
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_PIX}                     60
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO, CLIQUE NO BOTÃO FINALIZAR A COMPRA PARA AVANÇAR A TELA
    Wait Until Element Is Visible       ${DIV_FINALIZAR_4_HORAS_PARA_PAGAMENTO_PIX}        60
    Capture Page Screenshot
    Log to console                      @PAGAMENTO COM O PIX REALIZADO COM SUCESSO

###BOLETO
TELA FORMA DE PAGAMENTO COM O BOLETO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}    60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}         60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}       60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}  60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}       
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O BOLETO PARA AVANÇAR A TELA DE FINALIZAR O PEDIDO

TELA RESUMO DE PAGAMENTO COM O BOLETO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}                60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                     60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}       
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O BOLETO PARA AVANÇAR A TELA DE FINALIZAR O PEDIDO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_BOLETO_MOBILE}           60
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO

TELA DE FINALIZAÇÃO DE PAGAMENTO COM O BOLETO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}                60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                     60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_COM_BOLETO_MOBILE}       
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O BOLETO PARA AVANÇAR A TELA DE FINALIZAR O PEDIDO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_BOLETO_MOBILE}           60
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}                   60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @TELA DE RESUMO DE PAGAMENTO EXIBIA COM SUCESSO, CLIQUE NO BOTÃO FINALIZAR A COMPRA PARA AVANÇAR A TELA
    Wait Until Element Is Visible       ${DIV_PAGAMENTO_COM_SUCESSO_BOLETO_2_DIAS}          60
    #${CODIGO_DE_BARRAS_BOLETO}=         Get Text                                           ${DIV_NUMERO_DO_PEDIDO_BOLETO_MOBILE}
    #Log to console                      VALOR BOLETO é: ${CODIGO_DE_BARRAS_BOLETO}
    Capture Page Screenshot             
    #${NUMERO_DA_ORDEM}=                 Get Text                                                 ${DIV_NUMERO_DA_ORDEM_DE_COMPRA}
    #Log to console                      ${NUMERO_DA_ORDEM}



###CARTÃO DE CRÉDITO
TELA FORMA DE PAGAMENTO COM O CARTÃO DE CRÉDITO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    #Click Element	                    ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO CARTÃO DE CRÉDITO

TELA DADOS DO CARTÃO DE CRÉDITO COM O CARTÃO DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}      
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O CARTÃO DE CRÉDITO PARA AVANÇAR A TELA DE DADOS DO CARTÃO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_DO_CARTAO_CREDITO}  60
    Capture Page Screenshot
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO

TELA PARCELAMENTO COM O CARTÃO DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}      
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O CARTÃO DE CRÉDITO PARA AVANÇAR A TELA DE DADOS DO CARTÃO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_DO_CARTAO_CREDITO}  60
    Capture Page Screenshot
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot

TELA REVISÃO DO PEDIDO COM O CARTÃO DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}      
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O CARTÃO DE CRÉDITO PARA AVANÇAR A TELA DE DADOS DO CARTÃO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_DO_CARTAO_CREDITO}  60
    Capture Page Screenshot
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO SEGUINDO PARA A TELA DE REVISÃO DO PEDIDO
    Capture Page Screenshot
    Click Element                       ${BUTTON_VERDE_MOBILE_CONTINUAR}
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO_ENDERECO}              60
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO}                       60  
    Log to console                      @TELA DE REVISÃO DE PEDIDOS NO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot

TELA DE FINALIZAÇÃO COM O CARTÃO DE CRÉDITO - ${cpf} ${numero_cartao_de_credito} ${validade_do_cartao_de_credito} ${cvv_cartao_de_credito}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_CARTAO_DE_CREDITO_MOBILE}      
    Log to console                      @CLIQUE NO BOTÃO PAGAR COM O CARTÃO DE CRÉDITO PARA AVANÇAR A TELA DE DADOS DO CARTÃO
    Wait Until Element Is Visible       ${DIV_INSTRUCAO_PAGAMENTO_DO_CARTAO_CREDITO}  60
    Capture Page Screenshot
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO SEGUINDO PARA A TELA DE FINALIZAÇÃO DO PEDIDO
    Capture Page Screenshot
    Click Element                       ${BUTTON_VERDE_MOBILE_CONTINUAR}
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO_ENDERECO}              60
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO}                       60  
    Log to console                      @TELA DE REVISÃO DE PEDIDOS NO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${BUTTON_VERDE_MOBILE_FINALIZAR_PEDIDO}
    Log to console                      @TELA DE REVISÃO DE PEDIDOS NO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA A FINALIZAÇÃO DA COMPRA
    Wait Until Element Is Visible       ${DIV_PEDIDO_CARTAO_CREDITO_SUCESSO_MOBILE}    60
    Log to console                      @TELA DE FINALIZAÇÃO DE PEDIDO NO CARTÃO DE CRÉDITO FOI EXIBIA COM SUCESSO
    Capture Page Screenshot

###DOIS CARTÕES DE CRÉDITO
TELA FORMA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}  60
    Capture Page Screenshot
    #Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO

TELA SELEÇÃO PRIMEIRO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot

TELA INSERIR OS DADOS DO PRIMEIRO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um}              
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO

TELA PARCELAMENTO DO PRIMEIRO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um}             
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot

TELA DE SELEÇÃO DO SEGUNDO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um}             
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot
    Click Element                       ${DIV_IR_PARA_O_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO, SEGUINDO PARA TELA DE SELEÇÃO DO SEGUNDO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE}           60
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO
    Capture Page Screenshot

TELA PARA INSERIR OS DADO DO SEGUNDO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois}         
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot
    Click Element                       ${DIV_IR_PARA_O_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO, SEGUINDO PARA TELA DE SELEÇÃO DO SEGUNDO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE}           60
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO, SEGUINDO PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_dois}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           VEDDER MCCREADY HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_dois}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO SEGUNDO CARTÃO INSERIDOS COM SUCESSO

TELA DO PARCELAMENTO DO SEGUNDO CARTÃO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot
    Click Element                       ${DIV_IR_PARA_O_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO, SEGUINDO PARA TELA DE SELEÇÃO DO SEGUNDO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE}           60
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO, SEGUINDO PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_dois}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           VEDDER MCCREADY HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_dois}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO SEGUNDO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA O PARCELAMENTO DO SEGUNDO CARTÃO DE CRÉDITO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_dois}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Capture Page Screenshot
    Log to console                      @DADOS DO PARCELAMENTO INSERIDOS COM SUCESSO

TELA REVISÃO DO PEDIDO EM PAGAMENTOS COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot
    Click Element                       ${DIV_IR_PARA_O_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO, SEGUINDO PARA TELA DE SELEÇÃO DO SEGUNDO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE}           60
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO, SEGUINDO PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_dois}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           VEDDER MCCREADY HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_dois}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO SEGUNDO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA O PARCELAMENTO DO SEGUNDO CARTÃO DE CRÉDITO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_dois}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Capture Page Screenshot
    Log to console                      @DADOS DO PARCELAMENTO INSERIDOS COM SUCESSO, SEGUINDO PARA A REVISÃO DO PEDIDO
    Click Element                       ${BUTTON_VERDE_MOBILE_CONTINUAR}
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO_ENDERECO}              60
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO}                       60  
    Log to console                      @TELA DE REVISÃO DE PEDIDOS COM DOIS CARTÕES DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot

TELA DE FINALIZAÇÃO COM DOIS CARTÕES DE CRÉDITO NO MOBILE - ${cpf} ${numero_cartao_de_credito_um} ${validade_do_cartao_de_credito_um} ${cvv_cartao_de_credito_um} ${valor_cartao_de_credito_um} ${numero_cartao_de_credito_dois} ${validade_do_cartao_de_credito_dois} ${cvv_cartao_de_credito_dois}
    Wait Until Element Is Visible       ${BUTTON_CARRINHO_ALTERAR_ENDERECO}           60
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR} 
    Log to console                      @PRODUTO ADICIONADO AO CARRINHO, VERIFICADO OS BOTÕES ALTERAR E CUPONS, CLIQUE PARA SEGUIR PARA PROXIMA TELA
    Wait Until Element Is Visible       ${BUTTON_ENTREGA_ENTREGUE_POR}                60
    Capture Page Screenshot
    Wait Until Element Is Visible       ${BUTTON_VERDE_MOBILE_CONTINUAR}              60
    Click Element	                    ${BUTTON_VERDE_MOBILE_CONTINUAR}       
    Log to console                      @TELA DE ENTREGA EXIBIDA COM SUCESSO, BOTÃO CONTINUAR PARA AVANÇAR A TELA DE PAGAMENTO
    Wait Until Element Is Visible       ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}    60
    Capture Page Screenshot
    Click Element	                    ${BUTTON_PAGAMENTO_DOIS_DE_CREDITO_MOBILE}      
    Log to console                      @TELA DE PAGAMENTO COM DOIS CARTÕES DE CRÉDITO, SEGUINDO PARA SELEÇÃO DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}         60
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_PRIMEIRO_CARTAO_MOBILE}
    Log to console                      @TELA DE SELEÇÃO DO PRIMEIRO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA TELA DE INSERIR OS DADOS DO PRIMEIRO CARTÃO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_um}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           EDDIE MIKE HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_um}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA A TELA DE PARCELAMENTO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_um}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO 
    Capture Page Screenshot
    Click Element                       ${DIV_IR_PARA_O_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @PREENCHIDOS OS DADOS DA TELA DE PARCELAMENTO, SEGUINDO PARA TELA DE SELEÇÃO DO SEGUNDO CARTÃO
    Wait Until Element Is Visible       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE}           60
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO
    Capture Page Screenshot
    Click Element                       ${DIV_SELECAO_SEGUNDO_CARTAO_MOBILE} 
    Log to console                      @TELA DE SELEÇÃO DO SEGUNDO CARTÃO EXIBIA COM SUCESSO, SEGUINDO PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO
    Wait Until Element Is Visible       ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         60
    Log to console                      @TELA PARA INSERIR OS DADOS DO SEGUNDO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO
    Input Text	                        ${INPUT_NUMERO_CARTAO_CREDITO_MOBILE}         ${numero_cartao_de_credito_dois}                                   
    Input Text                          ${INPUT_NOME_CARTAO_CREDITO_MOBILE}           VEDDER MCCREADY HZ              
    Input Text                          ${INPUT_VALIDADE_CARTAO_CREDITO_MOBILE}       ${validade_do_cartao_de_credito_dois}  
    Input Text                          ${INPUT_CPF_CARTAO_CREDITO_MOBILE}            ${cpf}    
    Capture Page Screenshot
    Log to console                      @DADOS DO SEGUNDO CARTÃO INSERIDOS COM SUCESSO, SEGUINDO PARA O PARCELAMENTO DO SEGUNDO CARTÃO DE CRÉDITO
    Click Element	                    ${BUTTON_VERDE_PARCELAMENTO_MOBILE_CONTINUAR} 
    Wait Until Element Is Visible       ${INPUT_PARCELAMENTO_CVV_MOBILE}               60
    Input Text                          ${INPUT_PARCELAMENTO_CVV_MOBILE}               ${cvv_cartao_de_credito_dois}    
    Click Element	                    ${INPUT_PARCELAMENTO_1X_MOBILE} 
    Capture Page Screenshot
    Log to console                      @DADOS DO PARCELAMENTO INSERIDOS COM SUCESSO, SEGUINDO PARA A REVISÃO DO PEDIDO
    Click Element                       ${BUTTON_VERDE_MOBILE_CONTINUAR}
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO_ENDERECO}              60
    Wait Until Element Is Visible       ${DIV_REVISAO_DE_PEDIDO}                       60  
    Capture Page Screenshot
    Click Element                       ${BUTTON_VERDE_MOBILE_FINALIZAR_PEDIDO}
    Log to console                      @TELA DE REVISÃO DE PEDIDOS NO CARTÃO DE CRÉDITO EXIBIDA COM SUCESSO, SEGUINDO PARA A FINALIZAÇÃO DA COMPRA
    Wait Until Element Is Visible       ${DIV_PEDIDO_DOIS_CREDITO_SUCESSO_MOBILE}      60
    Log to console                      @TELA DE FINALIZAÇÃO DE PEDIDO EM DOIS CARTÕES DE CRÉDITO FOI EXIBIA COM SUCESSO
    Capture Page Screenshot

INICIO DO TESTE MOBILE:
    Sleep                               1