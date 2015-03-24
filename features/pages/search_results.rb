require_relative 'selectors/selectors'

module SearchResults

  def open_first_link_in_search_results
    @driver.find_element($first_item_in_results).click()
  end
  
end
