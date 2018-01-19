require 'page-object'

class OrderSummaryPage
  include PageObject

  button(:confirm_order, class: %w(button btn btn-default button-medium))
end
