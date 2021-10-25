*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Mobile.
Resource             ../../package_mobile.robot

*** Keywords ***
#######################################################################################
#                    Teste: Pesquisar canal “Prime Experts”                           #
#######################################################################################

Dado que o cliente esteja na tela de Home​
    Wait Until Element Is Visible        xpath=//*[contains(@text, 'Início')]
    Wait Until Element Is Visible        accessibility_id=YouTube

E pesquise um vídeo sobre "${PESQUISA}"​
    Click Element                        accessibility_id=Pesquisar
    Input Text                           id=search_edit_text            ${PESQUISA}
    Press Keycode                        66

E acessar o canal da Prime​
    Wait Until Element Is Visible        xpath=//android.view.ViewGroup[contains(@content-desc,"Prime Experts - Parceria entre Prime Control e UniBrasil ")]
    Click Element                        xpath=//android.view.ViewGroup[contains(@content-desc,"Prime Experts - Parceria entre Prime Control e UniBrasil ")]

    FOR    ${counter}    IN RANGE    0    10
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    accessibility_id=Fechar    5
        IF    ${status}
              Click Element    accessibility_id=Fechar
              sleep  3
        END 
        
    END
    

Quando clicar em Inscrever-se​
    Click Element                        accessibility_id=Inscreva-se em Prime Control.

Então será apresentado como Inscrito​
    Wait Until Element Is Visible        accessibility_id=Cancelar inscrição de Prime Control.

#######################################################################################
#                          Teste: Logar no YouTube                                    #
#######################################################################################

Logar no aplicativo com a conta x
    Dado que o cliente esteja na tela de Home​    
    Click Element                        accessibility_id=Conta
    Wait Until Element Is Visible        id=com.google.android.youtube:id/button
    Click Element                        id=com.google.android.youtube:id/button
    Wait Until Element Is Visible        id=com.google.android.youtube:id/name
    Click Element                        id=com.google.android.youtube:id/name
    Wait Until Element Is Visible        xpath=//android.widget.EditText[@resource-id="identifierId"]
    Input Text                           xpath=//android.widget.EditText[@resource-id="identifierId"]        balajujubinha@gmail.com
    Click Element                        xpath=//android.widget.Button[@text="PRÓXIMA"]  
    Wait Until Element Is Visible        xpath=//android.view.View[@resource-id="password"]//android.widget.EditText
    Input Password                       xpath=//android.view.View[@resource-id="password"]//android.widget.EditText                                     bj987654321
    Click Element                        xpath=//android.widget.Button[@text="PRÓXIMA"]
    Wait Until Element Is Visible        xpath=//android.widget.Button[@text="Concordo"]
    Click Element                        xpath=//android.widget.Button[@text="Concordo"]
    Wait Until Element Is Visible        id=com.google.android.gms:id/sud_items_switch
    Wait Until Element Is Visible        xpath=//android.widget.Button[@text="MAIS"]
    Click Element                        xpath=//android.widget.Button[@text="MAIS"]
    Wait Until Element Is Visible        xpath=//android.widget.Button[@text="ACEITAR"]
    Click Element                        xpath=//android.widget.Button[@text="ACEITAR"]
Entrar no menu “Explorar”
    Wait Until Element Is Visible        accessibility_id=Explorar
    Click Element                        accessibility_id=Explorar
    Wait Until Page Contains             Em alta
Usar swipe de tela até o 10 item da tela
    FOR    ${counter}    IN RANGE    0    10
        Swipe    500    1350    500    500
        sleep    1
    END
Clicar no vídeo
    Click Element At Coordinates  512  882
    Sleep    3
    Press Keycode    4
    Sleep    3
