require_relative 'spec_helper'
require_relative '../lib/conjured'

describe 'Conjured items' do
  context 'before sell in' do
    it 'does not change the name' do
      item = Conjured.new('foo', 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.name).to eq('foo')
    end

    it 'never lowers quality below 0' do
      item = Conjured.new('item', 10, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end

    it 'lowers the quality by two after a day' do
      item = Conjured.new('item', 2, 10)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(8)
    end

    it 'lowers the sell_in by one after a day' do
      item = Conjured.new('item', 2, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq(1)
    end
  end

  it 'after sell in lowers quality by four after a day' do
    item = Conjured.new('item', 0, 14)
    GildedRose.new([item]).update_quality
    expect(item.quality).to eq(10)
  end
end
