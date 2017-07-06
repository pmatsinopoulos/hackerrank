require 'spec_helper'
require_relative '../time-conversion'

describe 'Time Conversion' do
  [['07:05:45PM', '19:05:45'],
   ['12:00:23AM', '00:00:23'],
   ['01:05:20AM', '01:05:20'],
   ['11:58:23AM', '11:58:23'],
   ['12:00:00PM', '12:00:00']].each do |expected, result|
    it "converts #{expected} to #{result}" do
      expect(timeConversion(expected)).to eq(result)
    end
  end
end
