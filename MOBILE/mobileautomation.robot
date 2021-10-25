*** Settings ***
Documentation        Testes Mobile
Resource             ./package_mobile.robot

Test Setup           Abrir aplicativo    
Test Teardown        Fechar aplicativo

*** Test Case ***
    
Caso de Teste 01: Logar no YouTube
    [Tags]        LOGAR   
    Logar no aplicativo com a conta x
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

Caso de Teste 02: Usar método Swipe na tela
    [Tags]        EXPLORAR
    Entrar no menu “Explorar” 
    Usar swipe de tela até o 10 item da tela    
    Clicar no vídeo

Caso de Teste 03: Pesquisar canal “Prime Experts”​
    [Tags]        PRIME
    Dado que o cliente esteja na tela de Home​
    E pesquise um vídeo sobre "Prime Experts"​
    E acessar o canal da Prime​
    Quando clicar em Inscrever-se​
    Então será apresentado como Inscrito​