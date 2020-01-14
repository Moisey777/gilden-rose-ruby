require_relative 'item'

class AgedBrie < Item

  def update
    @quality += 1
    @quality += 1 if @sell_in.zero?
    @quality = 50 if @quality > 50
    @sell_in -= 1 unless @sell_in.zero?
  end
end
