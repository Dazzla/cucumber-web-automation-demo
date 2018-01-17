class ShippingPage

  include PageObject

  button(:proceed_to_checkout, name: 'processCarrier')
  checkbox(:ts_and_cs_checkbox, id: 'cgv')

end