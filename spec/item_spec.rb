require_relative 'spec_helper'
require_relative '../lib/item'

describe Item do
  subject { described_class.new('test item', 10, 10) }
  
  it { is_expected.to respond_to :name, :sell_in, :quality }

  it 'convert to string form' do
    expect(subject.to_s).to eq 'test item, 10, 10'
  end
end
