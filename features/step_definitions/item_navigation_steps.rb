When(/^I select the item in blue$/) do
  on QuickViewModalDialog do |modal_dialog|
    modal_dialog.select_colour 'Blue'
  end
end

Then(/^I can see that the item's selected colour is orange$/) do
  on QuickViewModalDialog do |modal_dialog|
    orange_is_selected = modal_dialog.colour_is_selected?('Orange')
    expect(orange_is_selected).to be true
  end
end


When(/^fail$/) do
  fail 'Test Failure'
end