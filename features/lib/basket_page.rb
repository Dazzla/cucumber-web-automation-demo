require 'page-object'

class BasketPage

  include PageObject

  page_url BASE_URL + 'index.php?controller=order'

  div(:basket_contents, id: 'order-detail-content')
  td(:item_total, id: 'total_product')
  td(:shipping_cost, id: 'total_shipping')
  td(:net_price, id: 'total_price_without_tax')
  link(:proceed_to_checkout, class: 'button btn btn-default standard-checkout button-medium')

  def no_of_products_in_basket
    self.basket_contents_element.trs(id: /product_(\S+)/).count
  end

  def products_total
    item_total.gsub('$', '').to_f.round(2)
  end

  def shipping_total
    shipping_cost.gsub('$', '').to_f.round(2)
  end

  def total_price_without_tax
    net_price.gsub('$', '').to_f.round(2)
  end

end