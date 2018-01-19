require 'page-object'

class OrderConfirmationPage
  include PageObject

  button(:proceed_to_checkout, class: %w(button btn btn-default button-medium))
end
