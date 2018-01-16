require 'page-object'

class OrderSummaryPage

  include PageObject

  button(:confirm_order, class: 'button btn btn-default button-medium')


end