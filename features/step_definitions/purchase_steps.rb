Given(/^I am viewing an item in quick\-view$/) do
  visit HomePage do |home_page| #Using first link on page. It fits the requirement but should be more flexible.
    home_page.open_quick_view
  end
end

When(/^I change the size of an item$/) do
  pending
end

And(/^I add the item to my basket$/) do
  pending
end

And(/^I add another item to my basket$/) do
  pending
end

Then(/^the items are visible in the basket$/) do
  pending
end

And(/^the total price is correct$/) do
  pending
end

And(/^I can complete payment$/) do
  pending
end
