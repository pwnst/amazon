Given(/^Im on Amazon home page$/) do
  $main_page.open
end

When(/^type iPhone 6 in search field$/) do
  $main_page.search('iphone6')
end

When(/^select Go button$/) do
  $main_page.select_go_button
end

When(/^select 1st product in search results$/) do
  $main_page.open_first_link_in_search_results
end

Then(/^products color is Gold or Space Gray or Gray or Silver$/) do
  product_color = $main_page.get_product_color
  expected_colors = ['Gold', 'Space Gray', 'Gray', 'Silver']
  expect(expected_colors).to include(product_color)
end

When(/^select Add to Cart button$/) do
  $main_page.add_product_to_cart
end

When(/^go to cart page$/) do
  $cart_page.open
end

Then(/^cart list in not empty$/) do
  expect($cart_page.is_cart_list_empty?).to be false
end

Then(/^Checkout button is available$/) do
  expect($cart_page.is_checkout_available?).to be true
end

Then(/^product name in cart list contains Apple iPhone 6$/) do
  products = $cart_page.products_in_cart_list
  products.each do |product|
    expect(product).to include('Apple iPhone 6')
  $driver_quit.call
  end
end
