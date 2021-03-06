require_relative 'spec_helper'
require_relative '../lib/legendary'

describe 'Sulfuras, Hand of Ragnaros' do
  it 'does not change sell_in' do
    item = Legendary.new('Sulfuras, Hand of Ragnaros', 1, 80)
    GildedRose.new([item]).update_quality
    expect(item.sell_in).to eq(1)
  end

  it 'does not change quality' do
    item = Legendary.new('Sulfuras, Hand of Ragnaros', 1, 80)
    GildedRose.new([item]).update_quality
    expect(item.quality).to eq(80)
  end
end
