Dado("que o usuario informe o Header para ser utilizado no request") do
  @headers = API_HEADERS
  @query = { "nome" => "rodrigo" }
end

Quando("realizar a requisição de {string}") do |method_name|
  #@response = @service.call(DojoAPI).find_generic
  @response = @service.call(DojoAPI).find_specific(@query)
end

Então("deve visualizar o corpo do retorno") do
  expect(@response.body.nil?).to be false
  p "Body da Resposta: #{@response.body}"
  p "Response Code da Resposta: #{@response.code}"
  p "Mensagem da Resposta: #{@response.message}"
  p "Headers da Resposta: #{@response.headers.inspect}"
end

Então("o status code deve ser {int}") do |status_code|
  expect(@response.code.eql?(status_code)).to be true
end
