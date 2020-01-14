require_relative 'spec_helper'
require_relative '../lib/gilded_rose'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      item = Normal.new('foo', 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.name).to eq 'foo'
    end

    it 'lowers the sell_in by one after a day' do
      item = Normal.new('item', 1, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq 0
    end

    it 'never lowers quality below 0' do
      item = Normal.new('item', 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.quality).to eq(0)
    end

    it 'never lowers sell_in below 0' do
      item = Normal.new('item', 0, 0)
      GildedRose.new([item]).update_quality
      expect(item.sell_in).to eq(0)
    end
  end
end
