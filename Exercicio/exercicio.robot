*** Settings ***
Documentation
...
...    Ex.1 Criar uma variável do tipo Dicionário que conterá dados de uma pessoa,com no mínimo 6 informações e imprima no console, uma infotmação por vez.
...    Ex.2 Crie uma variável do Tipo Lista de 05 frutas e imprima no console, uma por vez.
...    Ex.3 Some dois Números.
...    Ex.4 Crie uma keyword que cria um e-mail formado por nome_sobrenome_idade@robot.com, onde o nome, o sobrenome e a idade são recebidos via passagem de argumentos e, ao final, a keyword deve retornar esse e- mail formatado. Imprima o e-mail retornado no console.
...    Ex.5 Contando de 0 a 9.
...    Ex.6 Percorre uma lista de itens.
...    Ex.7 Crie um keywords que imprima no console a fraze "estou no numero: ${NUMERO}" de 0 a 10.
...    Ex.8 Percorrer lista de paises.
...    Ex.9 Apresentar numero espescifico 5 ou 8.

*** Variables ***
&{PESSOA}
...               Nome=Tania
...               Sobrenome=Laranja
...               Idade=29
...               Genero=feminino
...               Email=tania29@robot.com
...               Rg=640110526
@{FRUTAS}
...               abacate
...               maracuja
...               limao
...               morango
...               laranja

*** Test Cases ***
Teste e Impressão no console Pessoa.
    [Tags]    PESSOA
    Log To Console    ${PESSOA.Nome}
    Log To Console    ${PESSOA.Sobrenome}
    Log To Console    ${PESSOA.Idade}
    Log To Console    ${PESSOA.Genero}
    Log To Console    ${PESSOA.Email}
    Log To Console    ${PESSOA.Rg}

Teste e Impressão no console Frutas.
    [Tags]    LISTA
    Log To Console    ${Frutas[0]}
    Log To Console    ${Frutas[3]}

Somar dois Números
    [Tags]    SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}    Somar os numeros "562465" e "785462"
    Log To Console    ${RESULTADO}

Cenariu: Email resultado de Email
    [Tags]    E-MAIL
    ${RESULTADO}    Criando email    ${PESSOA.Nome}    ${PESSOA.Sobrenome}    ${PESSOA.Idade}
    Log To Console    ${RESULTADO}

contar de 0 a 9
    [Tags]    CONTAR
    contar de 0 a 9

percorrer itens de uma lista
    [Tags]    CONTA
    percorrer itens de uma lista

Tomar decisões
    Tomar decisões

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Criando email
    [Arguments]    ${Nome}    ${Sobrenome}    ${Idade}
    ${E-MAIL}    Catenate    ${Nome}_${Sobrenome}_${Idade}@robot.com
    [Return]    ${E-MAIL}

contar de 0 a 9
    [Tags]    CONTAR
    FOR    ${COUNT}    IN RANGE    0    9
        Log To Console    ${COUNT}
    END

percorrer itens de uma lista
    @{FRUTAS}    CREATE LIST    Banana    Morango    Abacate    Melancia
    FOR    ${FRUTAS}    IN    ${FRUTAS}
        Log To Console    ${FRUTAS}
    END

Paises
    @{PAISES}    Create List    Brasil    Olanda    Italia
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    Esto no pais    ${PAIS}
    END

Tomar decisões
    FOR    ${COUNT}    IN RANGE    0    9
        IF    '${COUNT}'=='5'
            Log To Console    Estou no numero ${COUNT}
        ELSE IF    '${COUNT}'=='8'
            Log To Console    Estou no numero ${COUNT}
        ELSE
            Log To Console    Este não é o número 5 ou o número 8
        END
    END
