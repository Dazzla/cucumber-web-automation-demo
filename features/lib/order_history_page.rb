require 'page-object'

class OrderHistoryPage

  include PageObject

  page_url BASE_URL + 'index.php?controller=history'


  def show_latest_order
    @browser.tr(class: 'last_item alternate_item')
        .link(class: 'color-myaccount').click
  end

end
