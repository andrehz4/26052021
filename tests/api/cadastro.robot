*** Settings ***				

Resource    ../../resources/services.robot

Test Setup      Create Session	            FastShop	        ${base_url}

*** Test Cases ***	
CADASTRO COM SUCESSO                                                                        #STATUS
    [Tags]                                  CADASTRO_NOVO
    Cadastro criar um usuario com sucesso                                                       201

