require 'page-object'
require 'watir-scroll'

class HomePage

  include PageObject

  page_url BASE_URL

  #No id exists, so building an array of quick-view links. Request id added to elems.
  unordered_list(:featured_items_carousel, id: 'homefeatured')

  list_items(:product_teaser) do |carousel|
    carousel.featured_items_carousel_element.list_item_element
  end

  links(:quick_view, class:'quick-view')

  def open_quick_view
    self.scroll.to :center #Not ideal, perhaps brittle. Needs refactor.
    self.product_teaser_elements.hover
    self.quick_view_elements.first.click
  end


end