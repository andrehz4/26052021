*** Settings ***
Resource         ../resources/setup_hz.robot

*** Variables ***
#BUSCA PRODUTO
${ID_ACEITAR_COOKIES}                                 id:onetrust-accept-btn-handler
${INPUT_BUSCA_PRODUTO}                                id:inpHeaderSearch
${SPAN_LUPA_BUSCA_PRODUTO}                            id:btnHeaderSearch
${BUTTON_SELECIONAR_SERVICO}                          //button[contains(text(), 'Selecionar')]
${H2_NOME_DO_PRODUTO}                             	  id:deliveredBy
${H1_NOME_DO_PRODUTO}                                 //div[@class='content']//..//h1
${A_ADICIONAR_NOVO_ENDERECO}                          //button[@class='btn btn-new-address']  
${P_NAO_SEI_MEU_ENDERECO}                             //p[contains(text(), 'Não sei meu CEP')]
${BUTTON_CONHECA_NOSSO_FRETE}                         //button[contains(text(), 'Conheça nosso frete')]
${INPUT_DIGITE_SEU_CEP}                               //input[@placeholder='Digite seu CEP']
${ID_ICONE_ADICIONAR_AO_CARRINHO}                     id:addToCartIcon       
${BUTTON_ADICIONAR_AO_CARRINHO}                       //button[contains(text(), 'Adicionar ao carrinho')]
${SPAN_ADICIONAR_AO_CARRINHO}                         //span[contains(text(), 'Adicionar ao carrinho')]
${SPAN_CUPOM_CARRINHO}                                //span[@class='coupon-placeholder']
${BUTTON_CONTINUAR_COMPRA_VERDE}                      (//span[contains(text(), ' Subtotal ')]//..//button[contains(text(), 'Continuar compra')])[last()]
${BUTTON_CONTINUAR_VERDE_ENDERECO}                    (//button[contains(text(), 'Continuar')])[last()]   
${DIV_QUANDO_RECEBER}                                 //h1[contains(text(), 'Quando deseja receber?')]  
${H1_ADICIONAR_SERVICO}                               //h1[contains(text(), 'Deseja adicionar algum serviço?')] 
${H1_COMO_DESEJA_PAGAR}                               //h1[contains(text(), 'Como deseja pagar?')] 
${DIV_ADD_CARTAO_DE_CREDITO}                          //div[contains(text(), ' Adicionar Cartão de Crédito ')] 
${LABEL_PAGAR_VIA_BOLETO}                             //div[contains(text(), 'Boleto')]//..//..//label
${LABEL_PAGAR_VIA_PIX}                                //div[contains(text(), 'Boleto')]//..//..//label
${LABEL_PAGAR_VIA_LISTA_DE_CASAMENTO}                 //div[contains(text(), 'Crédito de Lista de Casamento')]//..//..//label
${LABEL_PAGAR_VIA_CARTAO_DE_CREDITO}                  //div[contains(text(), 'Cartão de Crédito')]//..//..//label
${LABEL_PAGAR_COM_DOIS_CARTOES_DE_CREDITO}            //div[contains(text(), ' 2 Cartões de Crédito ')]//..//..//label
${BUTTON_CONTINUAR_VERDE_DADOS_PESSOAIS}              (//button[contains(text(), 'Continuar')])[last()]   
${BUTTON_CONTINUAR_VERDE_SERVICOS}                    (//button[contains(text(), 'Continuar')])[last()]  
${BUTTON_CONTINUAR_VERDE_PAGAMENTO}                   (//button[contains(text(), 'Continuar')])[last()] 
${BUTTON_CONTINUAR_VERDE_ADD_CARTAO}                  (//button[contains(text(), 'Continuar')])[last()]  
${BUTTON_CONTINUAR_VERDE_FINALIZAR_COMPRA}            (//button[contains(text(), 'Finalizar compra')])[last()] 
${BUTTON_CONTINUAR_VERDE_CONTINUAR_PARCELAMENTO}      (//button[contains(text(), 'Continuar para parcelamento')])[last()] 
${DIV_DESCRICAO_DO_PAGAMENTO}                         //div[@class='invoice-description']
${CARRINHO_URL}                                       http://webapp2-qa.fastshop.com.br/web/checkout-v2/carrinho  
${DIV_COMPRA_CONCLUIDA}                               //div[contains(text(), 'Você receberá no e-mail')]  
${A_BOTÃO_COMPRA_CONCLUIDA_OK_ENTENDI}                //a[@class='btn btn-success']
${DIV_EXCLUIR_FAVORITOS}                               //div[@class='delete']  
${DIV_EXCLUIR_PRODUTO}                                //div[@class='remove']  
${P_CARRINHO_VAZIO}                                   //p[@class='alert-text'][contains(text(), 'Seu carrinho está vazio.')]
${DIV_NOME_DO_PRODUTO}                                //div[@class='row']//span[1]
${LABEL_PERIODO_DO_SEGURO}                            //span[contains(text(), '+')]//..//..//label  
${BUTTON_APLICAR_SEGURO}                              //button[contains(text(), 'APLICAR')]        
${DIV_LOADER_ESPERA}                                  //div[@class='loader']

#PDP
${ID_ICONE_CHATBLA_PDP}                               id:auto-talk-seller  
${P_MENSAGEM_CHATBLA_PDP}                             //P[@class='description-talk']
${ID_HOTSITE_CHATBLA_APP}                             id:_landing_app_redirect
${ID_BOTAO_CLICK_COLLECTION_PDP}                      id:auto-click-collect-button  
${ID_AUMENTAR_A_QUANTIDADE_PDP}                       id:auto-add-product-quantity
${ID_COMPRAR_AGORA}                                   id:buyNow
${DIV_PRECO_PRODUTO_PDP}                              (//div[@class='content'])[last()]

#PAGAMENTO
${DIV_NOME_DO_TITULAR_DO_CARTAO}                      //div[contains(text(), 'NOME DO TITULAR')]  
${INPUT_NUMERO_CARTAO_DE_CREDITO}                     id:cardNumber                     
${INPUT_NOME_TITULAR_DO_CARTAO}                       id:holderName
${INPUT_VALIDADE_DO_CARTAO}                           id:expireDate
${INPUT_CPF_TITULAR_CARTAO}                           id:document    
${DIV_PAGAMENTO_CARTAO_JUROS}                         //div[contains(text(), ' Juros de')] 
${DIV_PARCELAMENTO_CAARTAO_DE_CREDITO}                id:optionSelected
${DIV_PAGAMENTO_PARCELAMENTO}                         //div[@class='select-items'] 
${DIV_PAGAMENTO_CVV}                                  //input[@formcontrolname='cvv']
${INPUT_CVV}                                          id:cvv
${LABEL_PAGAMENTO_PARCELADO}                          //div[@class='box-virtual-select']
${DIV_PAGAMENTO_LISTA_A_VISTA}                        //div[contains(text(), 'À vista')]   
${DIV_PAGAMENTO_PARCELADO}                            //div[contains(text(), '3x iguais*')]  
${DIV_ICONE_CONDICAO_ESPECIAL}                        //div[contains(text(), 'Condição especial')]  
${DIV_PAGAMENTO_CONDICAO_ESPECIAL_1x}                 //div[contains(text(), '1x')]             
${DIV_PAGAMENTO_LISTA_1x}                             //div[contains(text(), '1x')]   
${DIV_PAGAMENTO_LISTA_2x}                             //div[contains(text(), '2x iguais')]    
${DIV_PAGAMENTO_LISTA_3x}                             //div[contains(text(), '3x iguais')]  
${DIV_NUMERO_DA_ORDEM_DE_COMPRA}                      //div[@class='order-number']
#PIX
${ID_IMAGE_LOGOPIX_PAGAMENTO}                         id:pixLogoImage
${ID_IMAGE_NOTA_DINHEIRO_ICONE}                       //img[@id='pixLogoImage']//..//..//..//img[@id='signimage']
${RADIO_BUTTON_PIX}                                   //img[@id='pixLogoImage']//..//..//..//label
${DIV_DESCRICAO_DA_COMPRA_COM_PIX}                    //div[@class='main-description']
${DIV_RESUMO_FORMA_DE_PAGAMENTO_PIX}                  //div[@class='summary payment-section']//div[contains(text(), ' Pix ')] 
${ID_LOGO_PIX_TELA_PAGAMENTO}                         id:logoPix
${ID_ICONE_CIFRAO_TELA_PAGAMENTO}                     id:money
${SPAN_CONDICAO_ESPECIAL_COM_PIX}                     //span[@id='tagPromotionValue'][contains(text(), 'no pix')] 
${DIV_COMPRA_FINALIZADA_SUCESSO_PIX}                  //div[@class='highlight']
${ID_CHAVE_PIX}                                       id:pixKey
${ID_QR_CODE}                                         id:qrCode
${ID_BOTAO_COPIAR_CHAVE_PIX}                          id:copyPixKey
${DIV_NOTIFICAÇÃO_CHAVE_COPIADA_COM_SUCESSO}          //div[@class='notification']
${DIV_CAMPO_CHAVE_PIX}                                //div[@class='pix']

#BOLETO
${RADIO_BUTTON_BOLETO}                                //img[@id='pixLogoImage']//..//..//..//label
${DIV_TELA_CONFIRMACAO_BOLETO}                        //div[@class='invoice-title'][contains(text(), 'Boleto')] 
${DIV_NUMERO_CODIGO_BARRAS_BOLETO}                    id:auto-invoice-data    #//div[@class='number']
${DIV_CAMPO_NUMERO_CODIGO_BARRAS_BOLETO}              //div[@class='invoice-code']

#2 cartões
${LABEL_PAGAR_DOIS_CARTOES_DE_CREDITO}                //div[contains(text(), '2 Cartões de Crédito')]//..//..//label
${LABEL_VALOR_PRIMEIRO_CARTAO}                        //input[@formcontrolname='valueToPay']
${DIV_SEGUNDO_CARTAO}                                 //div[@class='subtitle'][contains(text(), ' 2° cartão ')] 
${BUTTON_IR_PARA_O_SEGUNDO_CARTAO}                    (//button[contains(text(), 'Ir para o 2° cartão')])[last()]
#Lista de casamento
${INPUT_VALOR_DA_LISTA}                                //input[@formcontrolname='valueToPay']
${SPAN_VALOR_SUBTOTAL}                                 //span[@class='subtotal-value']

#CUPOM
${INPUT_CUPOM_CARRINHO}                                //input[@formcontrolname='code']
${BUTTON_CONFIRMAR_CUPOM_CARRINHO}                     id:coupon_btn
${P_MENSAGEM_CUPOM_ADICIONADO_COM_SUCESSO}             //div[@class='notification']/./p[contains(text(), 'Cupom aplicado aos produtos elegíveis.')] 
${DIV_ICONE_DELETAR_CUPOM}                             //div[@class='coupon-remove']
${P_MENSAGEM_CUPOM_EXCLUIDO_DO_CARRINHO}               //div[@class='notification']/./p[contains(text(), 'Cupom excluído do carrinho.')] 
${BASE_URL_API}                                        https://apiqa.fastshop.com.br

#SERVIÇOS
${DIV_SUPORTE_TECNICO}                                //div[@class='service-name']//span[contains(text(), 'Suporte técnico')]//..//..//div[@class='checkbox']  
${DIV_PROTEÇÃO_DIGITAL}                                //div[@class='service-name']//span[contains(text(), 'Proteção Digital')]//..//..//div[@class='checkbox']
${DIV_SEGURO}                                         //div[@class='service-name']//span[contains(text(), 'Seguro')][1]//..//..//div[@class='checkbox']   
${DIV_SEGURO_QUEBRA_ACIDENTAL}                        //div[@class='service-name']//span[contains(text(), 'Seguro e Quebra Acidental')]//..//..//div[@class='checkbox']  
${DIV_GARANTIA_ESTENDIDA}                             //div[@class='service-name']//span[contains(text(), 'Garantia Estendida')]//..//..//div[@class='checkbox']  
${DIV_INSTALAÇÃO}                                     //div[@class='service-name']//span[contains(text(), 'Instalação e orientação de uso')]//..//..//div[@class='checkbox']  
${BUTTON_SERVICO_REMOVE}                              //div[@class='box-service']//button[@class='remove space']
${BUTTON_APLICAR_SERVICO}                             //button[contains(text(), 'APLICAR')]
${BUTTON_ALTERAR_ENTREGA}                             //button[contains(text(), 'Alterar')]
${BUTTON_REMOVE}                                      //button[@class='remove']
${LI_QUANTIDADE_2}                                    //li[contains(text(), '2')] 
${LI_QUANTIDADE_3}                                    //li[contains(text(), '3')] 
${LI_QUANTIDADE_4}                                    //li[contains(text(), '4')] 
${LI_QUANTIDADE_5}                                    //li[contains(text(), '5')]      


#ENDEREÇO
${INPUT_ENDEREÇO_NOME_DESTINATARIO}                   //input[@formcontrolname='name']
${ID_ENDEREÇO_CEP}                                    id:zipCode
${ID_ENDEREÇO_NOME_DA_RUA}                            id:streetName
${ID_ENDEREÇO_NUMERO}                                 id:number
${ID_ENDEREÇO_COMPLEMENTO}                            id:complement
${ID_ENDEREÇO_BAIRRO}                                 id:district
${ID_ENDEREÇO_CIDADE}                                 id:city
${ID_ENDEREÇO_ESTADO}                                 //select[@formcontrolname='state']
${ID_ENDEREÇO_TIPO_CASA}                              //select[@formcontrolname='housingType']
${ID_ENDEREÇO_TELEFONE}                               id:telephone
${BUTTON_SALVAR_ENDERÇO}                              //button[contains(text(), ' Adicionar ')]

### Login
${ID_LOGIN_CPF}                                       id:document
${ID_LOGIN_SENHA}                                     id:password
${BUTTON_CONFIRMAR_VERDE}                             //button[contains(text(), 'ENTRAR')]    #//button[@class='btn btn-green']   
${A_NOME_CLIENTE_LOGADO}                              //a[contains(text(), 'Daniel')] 
${P_MENSSAGEM_ERRO_LOGIN}                             //p[@class='err-msg']
${DIV_CPF_INVALIDO}                                   //div[@class='invalid-feedback']
${P_MENSSAGEM_ERRO_LOGIN}                             //p[contains(text(), ' Entre ou ')]
${A_LOGOUT}                                           //a[@class='logout']

### FAVORITOS
${BUTTON_LISTA_DE_FAVORITOS}                          //div[@class='user']//a[@class='favorite-icon']
${URL_FAVORITOS}                                      http://webapp2-qa.fastshop.com.br/web/checkout-v2/favoritos
${BUTTON_FAVORITOS}                                   //button[@class='btn-wish-list']
                      

### Cadastro API
${URL_CADASTRO_API}                         http://webapp2-qa.fastshop.com.br/web/checkout-v2/cadastro  
${url}                                      http://webapp2-qa.fastshop.com.br/web/checkout-v2/cadastro
${check_informe_Cpf_nao_cadastro}           id:document
${check_informe_Cpf}                        id:inputUser
${check_botao_verde_continuar}              class:btn-green
${check_label_senha_na_fastshop}            //label[contains(text(),'Senha na Fast Shop')]
${check_informe_senha}                      id:current-password
${check_botao_verde_continuar_comprando}    class:btn-success
${check_nome_andre}                         //span[contains(text(),'ANDRE')]
${check_mensagem_vermelha}                  //div[@class='invalid-feedback']
${check_mensagem_span_critica_vermelha}     class:invalid-feedback
${check_campo_cpf}                          id:document
${check_cadastro_nome}                      id:name
${check_cadastro_idade}                     id:birthday
${check_cadastro_sexo}                      //span[contains(text(),'Sexo')]//..//select
${check_cadastro_telefone}                  id:telephone
${check_cadastro_email}                     id:email
${check_cadastro_senha}                     id:password
${check_cadastro_confirmacao_senha}         id:password_confirmation
${check_cadastro_recebe_email}              id:receiveEmailFast
${check_cadastro_recebe_sms}                id:receiveSMSFast
${check_cadastro_cep}                       id:zipCode
${check_cadastro_rua}                       id:streetName
${check_cadastro_numero_casa}               id:number
${check_cadastro_bairro}                    id:district
${check_cadastro_cidade}                    id:city  
${check_cadastro_complemento}               id:complement
${check_cadastro_select_imovel}             //span[contains(text(),'Tipo de Imóvel')]//..//select
${check_icone_validador_verde_cep}          //span[contains(text(),'CEP')]//..//i[@class='validation-icon']          
${check_icone_validador_verde_rua}          //span[contains(text(),'Endereço')]//..//i[@class='validation-icon'] 
${check_icone_validador_verde_casa}         //span[contains(text(),'Número')]//..//i[@class='validation-icon'] 
${check_icone_validador_verde_bairro}       //span[contains(text(),'Bairro')]//..//i[@class='validation-icon'] 
${check_icone_validador_verde_cidade}       //span[contains(text(),'Cidade')]//..//i[@class='validation-icon']  
${check_icone_validador_verde_estado}       //span[contains(text(),'Estado')]//..//i[@class='validation-icon']
${check_icone_validador_verde_imovel}       //span[contains(text(),'Tipo de Imóvel')]//..//i[@class='validation-icon']         
${check_botao_verde_cadastrar}              //button[contains(text(), 'Cadastrar')]