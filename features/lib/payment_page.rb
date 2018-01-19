require 'page-object'

class PaymentPage
  include PageObject

  link(:pay_by_bankwire, class: 'bankwire')
end
