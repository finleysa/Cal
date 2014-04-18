require_relative 'helper'
require_relative "../zellers.rb"
require "test/unit"

class TestZellers < Test::Unit::TestCase

### Find Day Tests - Returns 0-6 ###

  def test_find_day_01a
    zeller = Zellers.new(04, 2012)
    assert_equal(1 , zeller.find_first_day)
  end

  def test_find_day_01b
    zeller = Zellers.new(03, 1987)
    assert_equal(1, zeller.find_first_day)
  end

  def test_find_day_01c
    zeller = Zellers.new(07, 1776)
    assert_equal(2, zeller.find_first_day)
  end

  def test_find_day_array_01d
    string = "03 1999"
    array = string.split
    zeller = Zellers.new(array[0].to_i, array[1].to_i)
    assert_equal(2, zeller.find_first_day)
  end

### Find Days In Month Tests ###

  def test_days_in_month_02a
    zeller = Zellers.new(04, 2012)
    assert_equal(30 , zeller.days_in_month)
  end

  def test_days_in_feb_leap_year_02a
    zeller = Zellers.new(02, 2012)
    assert_equal(29 , zeller.days_in_month)
  end

end
