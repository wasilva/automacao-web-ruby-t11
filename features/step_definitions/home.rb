Dado('que eu acesse a pagina home da consultoria') do
  home.load
end

Quando('clico no {string}') do |menu_item|
  home.click_button_menu(menu_item)
end

Então('deverei ser redirecionado para a sessão {string}') do |sessao|
  home.validation_menu(sessao)
end