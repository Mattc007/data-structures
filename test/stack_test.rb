require 'test/unit'
require_relative '../lib/data_structures'

class TestStack < Test::Unit::TestCase
  def test_stack
    assert_equal(nil, DataStructures::Stack.new(10).top)
    assert_equal('a', DataStructures::Stack.new(10).push('a').pop)
  end
end

