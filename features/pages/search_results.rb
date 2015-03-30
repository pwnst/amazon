module SearchResults
  @@first_item_in_results = {css: '#result_0 .a-size-base.a-color-null.s-inline.s-access-title.a-text-normal'}

  def open_first_link_in_search_results
    @driver.find_element(@@first_item_in_results).click()
  end
  
end
