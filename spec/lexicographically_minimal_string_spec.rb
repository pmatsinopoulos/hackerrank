require 'spec_helper'
require_relative '../lib/lexicographically_minimal_string'

describe 'Lexicographically Minimal String' do
  [['JACK', 'DANIEL', 'DAJACKNIEL'],
   ['ABACABA', 'ABACABA', 'AABABACABACABA'],
   ['ABACABA', '', 'ABACABA'],
   ['', '', ''],
   [nil, '', ''],
   [nil, nil, '']].each do |first_line, second_line, expected|
    it "returns #{expected} for #{first_line} and #{second_line}" do
      expect(lexicographically_minimal_string(first_line, second_line)).to eq(expected)
    end
  end
end
