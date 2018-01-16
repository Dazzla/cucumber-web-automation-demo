require 'page-object'

class BasketPage

  include PageObject

  page_url BASE_URL + 'index.php?controller=order'

  def no_of_products_in_basket
    @browser.div(id: 'order-detail-content').trs(id: /product_(\S+)/).count
  end

end