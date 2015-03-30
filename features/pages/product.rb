module Product
  @@product_color = {xpath: './/*[@id="variation_color_name"]/div/span'}
  @@add_to_cart_button = {id: 'add-to-cart-button'}

  def get_product_color
    #get currently selected product color
    @driver.find_element(@@product_color).text
  end
  
  def add_product_to_cart
    @driver.find_element(@@add_to_cart_button).click()
  end

end
