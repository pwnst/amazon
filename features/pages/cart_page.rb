require_relative 'selectors/selectors'
require_relative 'header'

class CartPage
  include Header

  def initialize(driver)
    @driver = driver
    @url = 'http://www.amazon.com/gp/cart/view.html'
  end
  
  def open
    @driver.navigate.to(@url)
  end
  
  def products_in_cart_list
    #get titles of products in cart list and return array
    products_in_cart = Array.new
    products = @driver.find_elements($product_names)
    products.each { |product| products_in_cart << product.text}
    products_in_cart
  end
  
  def is_cart_list_empty?
    #verify that carl list has no non deleted items
    @driver.find_elements($non_deleted_items).length < 0
  end
  
  def is_checkout_available?
    #verify that checkout button is enabled
    @driver.find_elements($checkout_button).length > 0
  end

end

