require 'spec_helper'
require_relative '../lib/find_median'

describe 'Find Median' do
  [
    [[0, 1, 2, 4, 6, 5, 3], 3],
    [[], nil],
    [[1], 1],
    [[1, 2], 1],
    [[1, 5, 8], 5],
    [[8, 5, 1], 5],
    [[1, 1, 1], 1]
   ].each do |input, expected|
    it "finds the median for array #{input} to be #{expected}" do
      expect(find_median(input)).to eq(expected)
    end
  end
end
