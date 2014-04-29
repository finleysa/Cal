require 'test/unit'
class TestMonth < Test::Unit::TestCase
  def test_month_1
    assert_equal `cal 02 2012`, `ruby cal 02 2012`
  end
  def test_month_2
    assert_equal `cal 02 2015`, `ruby cal 02 2015`
  end
  def test_month_3
    assert_equal `cal 12 2012`, `ruby cal 12 2012`
  end
  def test_month_4
    assert_equal `cal 02 1800`, `ruby cal 02 1800`
  end
  def test_month_5
    assert_equal `cal 02 1803`, `ruby cal 02 1803`
  end
  def test_month_6
    assert_equal `cal 03 2014`, `ruby cal 03 2014`
  end
  def test_month_6
    assert_equal `cal 07 1800`, `ruby cal 07 1800`
  end
=begin
  def test_all_months_1800_3000
    for i in 1800..3000
      for j in 1..12
        assert_equal `cal #{j} #{i}`, `ruby cal #{j} #{i}`
      end
    end
  end
=end
end


