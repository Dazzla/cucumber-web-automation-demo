require 'page-object'

class ShowOrderPanel

  include PageObject

  textarea(:comment_box, class: 'form-control')
  #button(:submit_comment, name: 'submitMessage')

  def select_order(order)
    @browser.select_list(name: 'id_product').select order
  end

  def submit_comment
    @browser.element(xpath: '/html/body/div/div[2]/div/div[3]/div/div/div/form[2]/div/button').click
  end

  def order_message
    @browser.element(xpath: '/html/body/div/div[2]/div/div[3]/div/div/div/div[5]/table/tbody/tr[1]/td[2]').text
  end

end