require_relative 'item'

# class for generic items
class Normal < Item
  def update
    @quality -= @sell_in > 0 ? 1 : 2 unless @quality.zero?
    @sell_in -= 1 unless @sell_in.zero?
  end
end
