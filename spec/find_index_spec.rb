require 'spec_helper'

require_relative '../lib/find_index'

describe 'Find Index' do
  [['4', '1 4 5 7 9 12', 1]].each do |v, array, expected|
    it "with value #{v} and array #{array.inspect} the expected value is #{expected}" do
      expect(find_index(v, array)).to eq(expected)
    end
  end
end
