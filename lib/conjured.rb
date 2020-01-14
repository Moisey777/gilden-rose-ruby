require_relative 'item'

# class for conjured items, update similar to normal but x2
class Conjured < Item
  def update
    @quality -= @sell_in > 0 ? 2 : 4 unless @quality.zero?
    @sell_in -= 1 unless @sell_in.zero?
  end
end
