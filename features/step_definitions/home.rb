Dado('que eu acesse a pagina home da consultoria') do
  home.load
end

Quando('clico no {string}') do |menu_item|
  home.click_button(menu_item)
end

Então('deverei ser redirecionado para a sessão {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end