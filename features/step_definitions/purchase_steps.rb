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
  @price += (on QuickViewModalDialog).current_item_price
end

Then(/^the items are visible in the basket$/) do
  visit BasketPage do |basket_page|
    expect(basket_page.no_of_products_in_basket).to eq 2

    # TODO: This is ugly. Tidy.
    expect(basket_page.basket_contents_element.trs(id: /product_(\S+)/).first.text.include?('Size : L'))
  end
end

And(/^the pricing is correct$/) do
  on BasketPage do |basket_page|
    expect(@price.round(2)).to equal basket_page.products_total
    expect(basket_page.products_total + basket_page.shipping_total).to equal basket_page.total_price_without_tax
  end
end

And(/^I can complete payment$/) do
  (on BasketPage).proceed_to_checkout
  (on OrderConfirmationPage).proceed_to_checkout
  (on ShippingPage).check_ts_and_cs_checkbox
  (on ShippingPage).proceed_to_checkout
  (on PaymentPage).pay_by_bankwire
  (on OrderSummaryPage).confirm_order
end
