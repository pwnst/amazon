require_relative 'selectors/selectors'

module Header

  def search(text)
    field = @driver.find_element($search_field)
    field.clear()
    field.send_keys(text)
  end

  def select_go_button
    @driver.find_element($go_button).click()
  end

  def select_cart_button
    @driver.find_element($cart_button)
  end

  def items_in_cart
    @driver.find_element($cart_button).text
  end

end

