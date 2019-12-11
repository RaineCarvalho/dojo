#language: pt
#utf-8

Funcionalidade: Validar métodos do CRUD da API de Cadastro de Pessoas
  Eu como usuario da API 
  Desejo operar o cadastro atraves da automação
  Para ser um QA melhor

@consultar
Cenario: Obeter a lista completa de Pessoas Cadastradas
  Dado que o usuario informe o Header para ser utilizado no request
  Quando realizar a requisição de "consulta_generica"
  Então deve visualizar o corpo do retorno
  E o status code deve ser 200