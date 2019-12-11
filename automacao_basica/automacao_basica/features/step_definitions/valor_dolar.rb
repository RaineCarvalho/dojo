Dado("que o usuário acesse a página do google") do
  visit "https://google.com"
end

Quando("efetuar a pesquisa por {string}") do |uol|
  find("input.gLFyf.gsfi").set uol
  find("input.gNO89b").click
end

Quando("acessar a pagina") do
  click_link("UOL - O melhor conteúdo")
  page.has_title? "UOL - O melhor conteúdo"
  click_button "não"
  click_link("Economia")
end

Quando("obter o valor do Dolar") do
  @v_dolar = first(".tituloGrafico .subtituloGrafico.subtituloGraficoValor").text.gsub("R$ ", "")
  @resultado = @v_dolar.to_f
end

Então("deverá verificar que o valor do dolar é menor que {float}") do |valor_esperado|
  p valor_esperado
  p @resultado
  expect(@resultado < valor_esperado).to be true
end
