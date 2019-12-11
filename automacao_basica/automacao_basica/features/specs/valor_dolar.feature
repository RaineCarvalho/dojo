#language: pt

Funcionalidade: Verificar cotação do dolar

  Contexto: Acessar página do Google
    

  Cenário: Verificar se o valor do dolar é menor que 3,20
    Dado que o usuário acesse a página do google
    Quando efetuar a pesquisa por "uol"
    E acessar a pagina 
    E obter o valor do Dolar 
    Então deverá verificar que o valor do dolar é menor que 5.20