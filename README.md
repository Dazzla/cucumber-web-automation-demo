Run with 

```
bundle exec cucumber features/order_history.feature --format html --out report.html --format pretty 
```

in the project root directory. 

You will need to supply features/support/password.rb and assign ```PASSWORD``` in there

**TODO List**

```ruby
   
  #TODO: This, unsurprisingly, is turning out to be somewhat brittle. Should be refactored.
  features/lib/quick_view_modal_dialog.rb:16: 
  @browser.div(class: 'fancybox-inner').iframe.body.p(id: 'add_to_cart').click
  
  #TODO: temporary solution to race condition. Refactor to better wait.
  features/lib/quick_view_modal_dialog.rb:17  
  sleep(1)
  
  #TODO: This is ugly. Tidy.
  #TODO: No id exists, so building an array of quick-view links. Request id added to elems.
  features/step_definitions/purchase_steps.rb:22: 
  expect(basket_page.basket_contents_element.trs(id: /product_(\S+)/).first.text.include? 'Size : L')
  
  
    #TODO: This test is too long and should be refactored into more atomic tests
    # There are too many steps and the assertions are not clean and separated
    # Presented this way for clarity
    features/purchase_items.feature:9
    Scenario: I purchase two items
      Given I am logged in
      And I am viewing an item in quick-view
      When I change the size of an item
      And I add the item to my basket
      And I am viewing another item in quick-view
      And I add the item to my basket
      Then the items are visible in the basket
      And the pricing is correct
      And I can complete payment
   
      def select_colour(colour)
        sleep 2 #TODO: fix with more appropriate wait
        fancybox_iframe.link(name: "#{colour.capitalize}").click
      end   
  ```
