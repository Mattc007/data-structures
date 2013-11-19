require 'test/unit'
require_relative '../lib/data_structures'

class TestStack < Test::Unit::TestCase

  def setup
    @stack = DataStructures::Stack.new(3)
  end

  def test_stack
    assert !@stack.top

    @stack.push 1
    assert_equal 1, @stack.pop

    @stack.push 1
    @stack.push 2
    assert_equal 2, @stack.pop
    assert_equal 1, @stack.pop

    assert_raise RuntimeError, 'stack underflow' do
      @stack.pop
    end

    @stack.push 1
    @stack.push 2
    @stack.push 3
    assert_raise RuntimeError, 'stack overflow' do
      @stack.push 4
    end

  end
end

