Given(/^I am viewing an item in quick\-view$/) do
  (visit HomePage).quick_view_item(0)
end

And(/^I am viewing another item in quick\-view$/) do
  (visit HomePage).quick_view_item(1)
end

When(/^I change the size of an item$/) do
  (on QuickViewModalDialog).select_size 'L'
end

And(/^I add the item to my basket$/) do
  (on QuickViewModalDialog).submit_to_basket
end

Then(/^the items are visible in the basket$/) do
  expect((visit BasketPage).no_of_products_in_basket).to eq 2
  true
end

And(/^the total price is correct$/) do
  pending
end

And(/^I can complete payment$/) do
  pending
end


