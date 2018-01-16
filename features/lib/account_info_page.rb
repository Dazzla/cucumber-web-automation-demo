require 'page-object'

class AccountInfoPage

  include PageObject

  p(:account_info, class: 'info-account')

  def is_displayed?
    self.account_info?
  end

end