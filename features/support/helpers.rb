module Helper

	def print_screen(file_name, result)
		date = "#{Time.now.strftime("%Y/%B/%d")}"
		hour = "#{Time.now.strftime("%H-%M-%S")}"

		file_path = "report/screenshots/tests_#{result}"
		screenshots = "#{file_path}/#{date}_#{hour}/#{file_name}.png"
		page.save_screenshot(screenshots)
		attach(screenshots, 'image/png')
	end
end