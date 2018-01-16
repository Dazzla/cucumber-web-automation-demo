Given(/^I am on the order history page$/) do
  (visit OrderHistoryPage).show_latest_order
end

Then(/^I add a message to the latest order$/) do
  on ShowOrderPanel do |show_order_panel|
    show_order_panel.select_order '1'
    show_order_panel.comment_box = TEST_COMMENT
    show_order_panel.submit_comment
  end
end

And(/^I can see the comment displayed against the order$/) do
  on ShowOrderPanel do |show_order_panel|
    expect(show_order_panel.order_message).to eq TEST_COMMENT
  end
end