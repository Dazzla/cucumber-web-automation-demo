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
    @browser.div(class: 'fancybox-inner').iframe.body.p(id: 'add_to_cart').when_present.click
    self.close_confirmation_dialog_element.when_present.click
  end

end