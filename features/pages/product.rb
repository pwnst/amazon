require_relative 'selectors/selectors'

module Product

  def get_product_color
    #get currently selected product color
    @driver.find_element($product_color).text
  end
  
  def add_product_to_cart
    @driver.find_element($add_to_cart_button).click()
  end

end
