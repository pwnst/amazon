require_relative '../pages/main_page'
require_relative '../pages/cart_page'
require 'selenium-webdriver'

#create webdriver instance
driver = Selenium::WebDriver.for :firefox

#create page objects
$main_page = MainPage.new(driver)
$cart_page = CartPage.new(driver)

#driver quit help function
$driver_quit = Proc.new { driver.quit() }
