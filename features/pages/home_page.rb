class Home < SitePrism::Page
	include RSpec::Matchers
	include Capybara::DSL

	set_url '/'

	def click_button(menu_item)
		sleep 2
		find(:xpath, '/html/body/header/div/nav/p[1]').click

		sleep 3
	end
end