# clock_test.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/clock'

#determins the format of the test that we run
Minitest::Reporters.use!

describe "clock" do
  it "Will return a string" do
  #arrange
  hours = 8
  minutes = 14
  seconds = 27

  #act
  time = clock(hours, minutes, seconds)

  #assert
  expect(time).must_be_instance_of String
  end

  it "Will return a string formatted in hh:mm:ss" do
    #arrange
    hours = 8
    minutes = 14
    seconds = 27

    #act
    time = clock(hours, minutes, seconds)

    #assert
    expect(time).must_equal "08:14:27"
  end
end