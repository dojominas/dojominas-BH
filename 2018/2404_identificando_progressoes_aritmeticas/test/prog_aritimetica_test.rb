require 'minitest/autorun'
require_relative '../lib/prog_aritimetica'

class ProgAritimetica < Minitest::Test
  def test_subprog()
    assert_equal [[1,2,3]], ProgAritmetica.new.subprog([1,2,3]) 
    assert_equal [[1,2,3,4]], ProgAritmetica.new.subprog([1,2,3,4]) 
    assert_equal [], ProgAritmetica.new.subprog([1,2,4])
    assert_equal [[1,2,3]], ProgAritmetica.new.subprog([3,2,1])
    assert_equal [[1,3,5,7,9], [3,6,9], [5,6,7], [1,5,9], [1,2,3]], ProgAritmetica.new.subprog([1,2,3,5,6,7,9])
    
  end

  def test_isprog()
    assert_equal true, ProgAritmetica.new.isprog([1,2,3])
    assert_equal false, ProgAritmetica.new.isprog([1,2,4])
    assert_equal false, ProgAritmetica.new.isprog([1,2])
    assert_equal false, ProgAritmetica.new.isprog([1,2,5])
  end

  def test_subarray()
    assert_equal [[2,3], [1,3], [1,2]], ProgAritmetica.new.subarray([1,2,3])
    assert_equal [[2,3,4], [1,3,4], [1,2,4], [1,2,3]], 
                 ProgAritmetica.new.subarray([1,2,3,4])
  end
end
