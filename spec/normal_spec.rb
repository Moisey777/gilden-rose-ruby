require_relative 'spec_helper'
require_relative '../lib/normal'

describe 'Generic item' do
  context 'before sell_in' do
    it 'lowers quality by one after one day' do
      item = Normal.new('item', 1, 1)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end

  context 'after sell_in' do
    it 'lowers quality by two after a day' do
      item = Normal.new('item', 0, 2)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end
  end
end
