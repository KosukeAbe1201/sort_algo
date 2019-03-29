require 'minitest/autorun'
require '../quick_sort'
require 'benchmark'

class QuickSortTest < Minitest::Test
  def setup
    num = 10000
    @arr = []
    num.times { @arr << rand(num)  }
  end

  def test_quick_sort
    assert_equal @arr.quick_sort, @arr.sort
    run_time = Benchmark.realtime { @arr.quick_sort }
    p run_time
  end
end
