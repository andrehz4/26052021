stages:
  - Acceptance Tests Frontend Iterasys

#######################################################################################################################################
####################################### API ###########################################################################################
#######################################################################################################################################
  
# WEB Testes com Docker+Pipeline HOME
Testes Web com Docker+Pipeline HOME:
    stage: Acceptance Tests Frontend Iterasys
    image: "registry.gitlab.com/andrehz/dockerfastshopqa:latest"
    tags:
        - docker
    artifacts:
        when: on_failure 
        paths:
            - ./results
        expire_in: 1 week
    script:
        - robot -d ./results -v BROWSER:headlesschrome ./tests/web/frontend/CriarListaDeLivros.robot


# WEB Testes com Docker+Pipeline HOME
Testes Web com Docker+Pipeline HOME:
    stage: Acceptance Tests Frontend Iterasys
    image: "registry.gitlab.com/andrehz/dockerfastshopqa:latest"
    tags:
        - docker
    artifacts:
        when: on_failure 
        paths:
            - ./results
        expire_in: 1 week
    script:
        - robot -d ./results -v BROWSER:headlesschrome ./tests/web/frontend/CriarListaMeusLivros.robot


#######################################################################################################################################
####################################### NAVEGAÇÃO #####################################################################################
#######################################################################################################################################


#######################################################################################################################################
####################################### MOBILE ########################################################################################
#######################################################################################################################################
