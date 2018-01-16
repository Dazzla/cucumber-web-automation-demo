require 'page-object'

class OrderConfirmationPage

  include PageObject

  button(:proceed_to_checkout, class: 'button btn btn-default button-medium')

end