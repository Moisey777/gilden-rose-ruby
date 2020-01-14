require_relative 'item'

class BackstagePass < Item

  def update
    if @sell_in > 10
      @quality += 1
    elsif @sell_in > 5
      @quality += 2
    else
      @quality += 3
    end
    @quality = 0 if @sell_in.zero?
    @quality = 50 if @quality > 50
    @sell_in -= 1 unless @sell_in.zero?
  end
end
