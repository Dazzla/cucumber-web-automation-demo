require 'page-object'

require_relative '../support/password'

class LoginPage

  include PageObject

  text_field(:email_field, id: 'email')
  text_field(:password_field, id: 'passwd')
  button(:submit_login, id: 'SubmitLogin')

  def log_in(username = USERNAME, password = PASSWORD)
    self.email_field = username
    self.password_field = password
    self.submit_login
  end

end