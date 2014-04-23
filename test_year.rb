require 'test/unit'
class TestCal < Test::Unit::TestCase
  def test_month_1
    assert_equal `cal 2012`, `./cal 2012`
  end
  def test_month_2
    assert_equal `cal 2015`, `./cal 2015`
  end
  def test_month_3
    assert_equal `cal 2017`, `./cal 2017`
  end
  def test_all_months_1800_3000
    for i in 1800..3000
      assert_equal `cal #{i}`, `ruby cal #{i}`
    end
  end
end


