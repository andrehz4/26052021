*** Settings ***
Documentation      FASTSHOP - PRIME
...                Como um usuário do site Fast Shop
...                Quero acessar a página com a assinatura PRIME PLUS
...                Então verifico se a exibição do site segue o padrão da minha assinatura.


Resource         ../../../resources/base.robot
Suite Setup      Start Session
Suite Teardown   End Session
Test Teardown    End Test

  
*** Test Cases ***        
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: 3T2003894VRM2.
    [Template]               CLIENTE PRIME
    [Tags]                   COMESTOQUE 
    #CPF                     #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    93170258621              12345678                    3T2003894VRM2         
    93170258621              12345678                    3T2003894VRM2        
    93170258621              12345678                    3T2003894VRM2        
    
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: 3TS20VERSAVRM1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    84206753938              12345678                    3TS20VERSAVRM1         
    84206753938              12345678                    3TS20VERSAVRM1        
    84206753938              12345678                    3TS20VERSAVRM1        
     
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: 3TS20VERSAVRM2.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    74302596180              12345678                    3TS20VERSAVRM2         
    74302596180              12345678                    3TS20VERSAVRM2        
    74302596180              12345678                    3TS20VERSAVRM2        


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: 8S311310222PTO.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    94057621334              12345678                    8S311310222PTO         
    94057621334              12345678                    8S311310222PTO        
    94057621334              12345678                    8S311310222PTO        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: AEMN8X2BRAPTOB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    53026974161              12345678                    AEMN8X2BRAPTOB         
    53026974161              12345678                    AEMN8X2BRAPTOB        
    53026974161              12345678                    AEMN8X2BRAPTOB        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: AEMQ6G2BRACNZB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    98163742003              12345678                    AEMQ6G2BRACNZB         
    98163742003              12345678                    AEMQ6G2BRACNZB        
    98163742003              12345678                    AEMQ6G2BRACNZB        
 

ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: AEMT572BZAPTAB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    04562873108              12345678                    AEMT572BZAPTAB         
    04562873108              12345678                    AEMT572BZAPTAB        
    04562873108              12345678                    AEMT572BZAPTAB        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: AEMWHJ2BZACNZB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    53620784108              12345678                    AEMWHJ2BZACNZB         
    53620784108              12345678                    AEMWHJ2BZACNZB        
    53620784108              12345678                    AEMWHJ2BZACNZB        
 


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: ARLN72_110.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    46537281008              12345678                    ARLN72_110         
    46537281008              12345678                    ARLN72_110        
    46537281008              12345678                    ARLN72_110        
    
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: ARLN72_220.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    31502864762              12345678                    ARLN72_220         
    31502864762              12345678                    ARLN72_220        
    31502864762              12345678                    ARLN72_220        
     
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: BDFRYERBPTO1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    49652738182              12345678                    BDFRYERBPTO1         
    49652738182              12345678                    BDFRYERBPTO1        
    49652738182              12345678                    BDFRYERBPTO1        


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: BDFRYERBPTO2.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    64120758958              12345678                    BDFRYERBPTO2         
    64120758958              12345678                    BDFRYERBPTO2        
    64120758958              12345678                    BDFRYERBPTO2        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: BRBLF14AE1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    43561827071              12345678                    BRBLF14AE1         
    43561827071              12345678                    BRBLF14AE1        
    43561827071              12345678                    BRBLF14AE1        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: C8ASTPZF5SELF.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    52168074380              12345678                    C8ASTPZF5SELF         
    52168074380              12345678                    C8ASTPZF5SELF        
    52168074380              12345678                    C8ASTPZF5SELF        
 

ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: COCRA30FBANA.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    83467519237              12345678                    COCRA30FBANA         
    83467519237              12345678                    COCRA30FBANA        
    83467519237              12345678                    COCRA30FBANA        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: EXDB84X1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    03829475179              12345678                    EXDB84X1         
    03829475179              12345678                    EXDB84X1        
    03829475179              12345678                    EXDB84X1        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: EXDB84X2.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    41270356925              12345678                    EXDB84X2         
    41270356925              12345678                    EXDB84X2        
    41270356925              12345678                    EXDB84X2        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: EXGC75PBIV89NB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    73451628007              12345678                    EXGC75PBIV89NB         
    73451628007              12345678                    EXGC75PBIV89NB        
    73451628007              12345678                    EXGC75PBIV89NB        
 

ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: ISFR2014674PCN.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    73619452873              12345678                    ISFR2014674PCN         
    73619452873              12345678                    ISFR2014674PCN        
    73619452873              12345678                    ISFR2014674PCN        
    
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: JBLFLIP5PTOB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    25306791425              12345678                    JBLFLIP5PTOB         
    25306791425              12345678                    JBLFLIP5PTOB        
    25306791425              12345678                    JBLFLIP5PTOB        
     
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: JBLGO2PTOB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    32409578179              12345678                    JBLGO2PTOB         
    32409578179              12345678                    JBLGO2PTOB        
    32409578179              12345678                    JBLGO2PTOB        


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: LG50UM7510PSBB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    91506428398              12345678                    LG50UM7510PSBB         
    91506428398              12345678                    LG50UM7510PSBB        
    91506428398              12345678                    LG50UM7510PSBB        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: LGCJOLED55C902.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    75692481391              12345678                    LGCJOLED55C902         
    75692481391              12345678                    LGCJOLED55C902        
    75692481391              12345678                    LGCJOLED55C902        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: LGCJOLED55C902.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    86417029387              12345678                    LGCJOLED55C902         
    86417029387              12345678                    LGCJOLED55C902        
    86417029387              12345678                    LGCJOLED55C902        
 

ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: LGCV7011WS41.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    81429605758              12345678                    LGCV7011WS41         
    81429605758              12345678                    LGCV7011WS41        
    81429605758              12345678                    LGCV7011WS41        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: LGCV7011WS42.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    32587916003              12345678                    LGCV7011WS42         
    32587916003              12345678                    LGCV7011WS42        
    32587916003              12345678                    LGCV7011WS42        
 


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: PANAF160B5W1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    41268530735              12345678                    PANAF160B5W1         
    41268530735              12345678                    PANAF160B5W1        
    41268530735              12345678                    PANAF160B5W1        
    
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGQN55Q80RAB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    57302196877              12345678                    SGQN55Q80RAB         
    57302196877              12345678                    SGQN55Q80RAB        
    57302196877              12345678                    SGQN55Q80RAB        
     
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGSMA515FZBCOB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    13269085702              12345678                    SGSMA515FZBCOB         
    13269085702              12345678                    SGSMA515FZBCOB        
    13269085702              12345678                    SGSMA515FZBCOB        


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGSMA515FZPTOB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    30642179506              12345678                    SGSMA515FZPTOB         
    30642179506              12345678                    SGSMA515FZPTOB        
    30642179506              12345678                    SGSMA515FZPTOB        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGUN50RU7450B.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    60275918386              12345678                    SGUN50RU7450B         
    60275918386              12345678                    SGUN50RU7450B        
    60275918386              12345678                    SGUN50RU7450B        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGUN55NU74PTAB.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    81206347562              12345678                    SGUN55NU74PTAB         
    81206347562              12345678                    SGUN55NU74PTAB        
    81206347562              12345678                    SGUN55NU74PTAB        
 

ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGWD11M44530S2.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    28369704565              12345678                    SGWD11M44530S2         
    28369704565              12345678                    SGWD11M44530S2        
    28369704565              12345678                    SGWD11M44530S2        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGWD11M44530W1.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    21704568307              12345678                    SGWD11M44530W1         
    21704568307              12345678                    SGWD11M44530W1        
    21704568307              12345678                    SGWD11M44530W1        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: SGWD11M44530W2.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    18359027404              12345678                    SGWD11M44530W2         
    18359027404              12345678                    SGWD11M44530W2        
    18359027404              12345678                    SGWD11M44530W2        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: UXX512FABR568B.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    75986024338              12345678                    UXX512FABR568B         
    75986024338              12345678                    UXX512FABR568B        
    75986024338              12345678                    UXX512FABR568B        
 


ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: UXX512FABR569B.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    02871956430              12345678                    UXX512FABR569B         
    02871956430              12345678                    UXX512FABR569B        
    02871956430              12345678                    UXX512FABR569B        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: UXX512FJEJ225B.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    48265713053              12345678                    UXX512FJEJ225B         
    48265713053              12345678                    UXX512FJEJ225B        
    48265713053              12345678                    UXX512FJEJ225B        
 
ACESSAR COM A MINHA ASSINATURA PRIME PLUS VERIFICAR O STATUS PRIME E USAR OUTROS DOIS SEM SUCESSO SKU: UXX512FJEJ228B.
    [Template]                  CLIENTE PRIME

    #CPF                        #Senha                      #Produto            recebida                                                                                    #Mensagem recebida dois                                                                              
    37186095259              12345678                    UXX512FJEJ228B         
    37186095259              12345678                    UXX512FJEJ228B        
    37186095259              12345678                    UXX512FJEJ228B        
 




*** Keywords ***
CLIENTE PRIME
    [Arguments]        ${cpf}       ${senha}     ${busca_produto}    
    
    Deletar um produto do carrinho FastShop             ${cpf}        ${senha}        ${busca_produto}
    Dado que acesso e verifico que estou no site da FASTSHOP
    Quando é preenchido o campo de busca ${busca_produto}, verifico se o mesmo é retornado na lista
    E e logo no site com o CPF ${cpf} e a senha ${senha}
    Então o produto ${busca_produto} é adicionado e verificado que está no carrinho 
    E adiciono um, para ter desconto no item ${busca_produto}.
    Então tento adicionar um novo e o site não permite me informando a seguinte mensagem ${mensagem_recebida}
    Então novamente uso um novo e o site não permite me informando a seguinte mensagem ${mensagem_recebida_dois}
 