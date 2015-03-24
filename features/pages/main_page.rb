require_relative 'header'
require_relative 'search_results'
require_relative 'product'


class MainPage
  include Header
  include SearchResults
  include Product
  
  def initialize(driver)
    @driver = driver
    @url = 'http://www.amazon.com/'
  end

  def open
    @driver.navigate.to(@url)
  end

end

