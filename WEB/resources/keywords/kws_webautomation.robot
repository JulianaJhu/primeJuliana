
*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Web.

Resource             ../../package_web.robot

*** Keywords ***
Acessar a página home do site Automation Practice​
    Go To                               ${URL}
    Title Should Be                     ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible       ${HOME.HEADER_OPTIONS}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa​
    Input Text                          ${HOME.INPUT_BUSCA}        ${PRODUTO} 

Clicar no botão pesquisar​
    Click Element                       ${HOME.BTN_PESQUISAR}

Conferir se o produto "${PRODUTO}" foi listado no site
    Page Should Contain Image           xpath=${HOME.IMG_BLOUSE}
    Title Should Be                     ${HOME.TITLE_PAGE_PESQUISA}