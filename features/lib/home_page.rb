require 'page-object'
require 'watir-scroll'

class HomePage

  include PageObject

  page_url BASE_URL

  #No id exists, so building an array of quick-view links. Request id added to elems.
  unordered_list(:featured_items_carousel, id: 'homefeatured')

  list_items(:product_teaser) do |teaser|
    teaser.featured_items_carousel_element.list_item_elements
  end

  links(:quick_view, class:'quick-view')

  def quick_view_item(index=0)
    self.scroll.to :center #Not ideal, perhaps brittle. Needs refactor.
    puts self.product_teaser_elements[index].hover
    self.quick_view_elements[index].click
  end


end