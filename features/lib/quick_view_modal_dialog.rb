require 'page-object'

class QuickViewModalDialog
  include PageObject

  span(:close_confirmation_dialog, class: 'cross')

  def select_size(size)
    # This might be flexible enough, but also might require expansion
    @browser.div(class: 'fancybox-inner').iframe.body.select_list(id: 'group_1').select(size)
  end

  def submit_to_basket
    # TODO: This, unsurprisingly, is turning out to be somewhat brittle. Should be refactored.
    sleep(1) # TODO: temporary solution to race condition. Refactor to better wait.
    @browser.div(class: 'fancybox-inner').iframe.body.p(id: 'add_to_cart').click
    close_confirmation_dialog_element.click
  end

  def fancybox_iframe
    @browser.iframes[4]
  end

  def current_item_price
    @browser.span(id: 'layer_cart_product_price').text.delete('$').to_f.round(2)
  end

  def select_colour(colour)
    sleep 1 # TODO: fix with more appropriate wait
    fancybox_iframe.link(name: colour.capitalize.to_s).click
  end

  def colour_is_selected?(colour)
    sleep 1 # TODO: fix with more appropriate wait
    fancybox_iframe.link(name: colour.capitalize.to_s).attribute_value('class') == 'color_pick selected'
  end
end
