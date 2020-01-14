require_relative 'item'
require_relative 'aged_brie'
require_relative 'backstage_pass'
require_relative 'normal'
require_relative 'legendary'
require_relative 'conjured'

# the gilded rose shop
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each { |item| item.update }
  end
end
