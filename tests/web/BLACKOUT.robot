*** Settings ***
Documentation      FASTSHOP - BLACKOUT
...                BLOACKOUT - FASTSHOP Golden Friday
...                Objetivo é reduzir o tempo que ficamos em blackout
...                em entrevista com o time de e-commerce um dos "ofensores" é a coleta das evidencias dos preços , isto é printar e arquivar cada produto que esta com oferta golden - solicitação juridico
...                na ultima Goldem foram cerca de 500 produtos
...                O tempo de blackout planejado em 2 horas , virou 5 horas , para captar todas as imagens e arquivar.
...                gostaria de avaliar, se conseguimos automatizar esta coleta de evidencias.


Resource           ../../resources/base.robot
Suite Setup        Start Session
Suite Teardown     End Session
Test Teardown      End Test

*** Variables ***
${SKU_AMBIENTE}             ARB101CHOPPTO_PRD 

#http://webapp2-qa.fastshop.com.br/web/s/ARB101CHOPPTO_PRD

*** Test Cases ***
TESTE RPA - BLACKOUT GOLDEN FRIDAY
    [Template]                  EVIDÊNCIAS DO PRODUTO: 

    [Tags]                      BLACKOUT
    #Sku                                                                             
    BRBRM45HK_PRD
    BRBRE57AK_PRD 
    SGRS50N3413S8_PRD 
    EXDB84X_PRD 
    BRBRM56AK_PRD  

*** Keywords ***
EVIDÊNCIAS DO PRODUTO: 
    [Arguments]                                      ${busca_produto}  
                        
    TELA DE BUSCA DE PRODUTOS ACEITANDO OS COOKIES - ${busca_produto}             
    INICIO DO TESTE:    
    1 - FOTO E HORÁRIO DO SKU: ${busca_produto} - CLIQUE AQUI PARA EXIBIR AS EVIDÊNCIAS
    - - - - ${busca_produto}         
    2 - FOTO E HORÁRIO DA PÁGINA DO PRODUTO: ${busca_produto} - CLIQUE AQUI PARA EXIBIR AS EVIDÊNCIAS 
    FIM DO TESTE OK