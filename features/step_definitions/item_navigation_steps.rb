When(/^I select the item in blue$/) do
  on QuickViewModalDialog do |modal_dialog|
    modal_dialog.select_colour 'Blue'
  end
end

Then(/^I can see that the item's selected colour is blue$/) do
  on QuickViewModalDialog do |modal_dialog|
    expect(modal_dialog.colour_is_selected?('Blue')).to be true
  end
end
