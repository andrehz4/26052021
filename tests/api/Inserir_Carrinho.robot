*** Settings ***				

Resource    ../../resources/services.robot

Test Setup      Create Session	            FastShop	        ${base_url}

*** Test Cases ***	
ADICIONAR PRODUTO AO CARRINHO   
                                                                #CPF            #SENHA         #PRODUTO                              #STATUS
    ADICIONAR PRODUTO AO CARRINHO                              56494978002     12345678       PANRBB53PV32                                


















