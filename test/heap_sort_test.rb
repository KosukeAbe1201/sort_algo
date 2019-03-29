require 'minitest/autorun'
require '../heap_sort'
require 'benchmark'

class HeapSortTest < Minitest::Test
  def setup
    num = 10000
    @arr = []
    num.times { @arr << rand(num)  }
  end

  def test_heap_sort
    assert_equal @arr.heap_sort, @arr.sort
    run_time = Benchmark.realtime { @arr.heap_sort }
    p run_time
  end
end
