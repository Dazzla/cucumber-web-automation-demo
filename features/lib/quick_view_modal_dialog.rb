require 'page-object'

class QuickViewModalDialog

  include PageObject

  in_frame(id: 'fancybox-frame1516125518851') do |quick_view_frame|
    span(:close_dialog, class: 'continue btn btn-default button exclusive-medium', frame: quick_view_frame)
  end

  span(:close_confirmation_dialog, class: 'cross')

  def select_size(size)
    #This might be flexible enough, but also might require expansion
    @browser.div(class: 'fancybox-inner').iframe.body.select_list(id: 'group_1').select_value(size)
  end

  def submit_to_basket
    #TODO: This, unsurprisingly, is turning out to be somewhat brittle. Shoould be refactored.
    @browser.div(class: 'fancybox-inner').iframe.body.p(id: 'add_to_cart').when_present.click
    self.close_confirmation_dialog_element.click #Refactor to put wait time into config
  end

  def current_item_price
    @browser.span(id: 'layer_cart_product_price').text.gsub('$', '').to_f.round(2)
  end

end
