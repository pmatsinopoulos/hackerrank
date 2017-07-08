require 'spec_helper'
require_relative '../lib/fraud_number_of_notifications_2'

describe 'Fraud Number Of Notifications' do
  [
      [5, [2, 3, 4, 2, 3, 6, 8, 4, 5], 2],
      [5, [], 0],
      [5, [1, 2, 3, 4, 5], 0],
      [4, [1, 2, 3, 4, 5], 1],
      [5, [1, 2, 3, 4, 5, 6], 1],
      [5, [1, 2, 3, 4, 5, 6, 6], 1],
      [5, [1, 2, 3, 4, 5, 6, 8], 2],
      [0, [1, 2, 3, 4, 5, 6, 8], 0],
      [2, [8, 0, 0, 18, 18], 2],
      [2, [0, 0, 0, 0, 18], 1],
      [2, [0, 0, 0, 0], 0],
      [2, [0, 0, 1, 1], 2],
      [2, [0, 0, 2, 0], 1]
  ].each do |d, expenditures, expected|
    it "for #{d} days to take into account and expenditures equal to #{expenditures.join(' ')} the expected number of notifications is #{expected}" do
      expect(fraud_number_of_notifications(d, expenditures)).to eq(expected)
    end
  end

  # need to write a test case that picks up the data from files.
  # it seems that with very big input, we have performance problem.
  it 'x' do
    File.open(File.join(File.expand_path('..', __FILE__), 'files/fraud_number_of_notifications/input01.txt')) do |file|
      d = file.readline.chomp.to_i
      array = file.readline.split(' ').map(&:to_i)
      expect(fraud_number_of_notifications(d, array)).to eq(633)
    end
  end
end
