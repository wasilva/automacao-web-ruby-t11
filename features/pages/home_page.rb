class Home < SitePrism::Page
	include RSpec::Matchers
	include Capybara::DSL

	set_url '/'

	#MENU 
	element :menu_item_sobre, :xpath, '//p[text()="Sobre"]'
	element :menu_item_servicos, :xpath, '//p[@class="sc-kbUMEY llGxuN"]'

	#VALIDAÇÃO
	element :titulo_sobre_nos, :xpath, '//p[text()="Sobre nós"]'
	element :titulo_servicos, :xpath, '//h3[text()="Soluções Personalizadas"]'

	def click_button_menu(menu_item)

		case menu_item
		when menu_item
			menu_item_sobre.click
		when menu_item
			menu_item_servicos.click
		else
			raise "Elemento não encontrado: #{menu_item}."
		end
	end

	def validation_menu(sessao)
		case sessao
		when sessao
			expect(titulo_sobre_nos).to have_text(sessao)
		when sessao
			expect(titulo_servicos).to have_text(sessao)
		else
			raise "Elemento não encontrado: #{menu_item}."
		end
	end
end