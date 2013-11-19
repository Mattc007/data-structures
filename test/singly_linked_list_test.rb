require 'test/unit'
require_relative '../lib/data_structures'

class SinglyLinkedListTest < Test::Unit::TestCase

  def setup
    @list = DataStructures::SinglyLinkedList.new
    @another_list = DataStructures::SinglyLinkedList.new
  end

  def test_singly_linked_list
    assert @list.empty?
    assert_nil @list.head
    assert_nil @list.search(1)
    assert_nil @list.search(99)

    @list.insert(1)
    assert !@list.empty?
    assert_equal 1, @list.head
    assert_equal 1, @list.search(1)
    assert_nil @list.search(99)

    @list.insert(99)
    assert !@list.empty
    assert_equal 99, @list.head
    assert_equal 99, @list.search(99)
    assert_equal 1, @list.search(1)

    @list.delete(1)
    assert_equal 99, @list.head
    assert_equal 99, @list.search(99)
    assert_nil @list.search(1)

    assert_raise RuntimeError, 'element not found' do
      @list.delete(1)
    end
    assert_equal 99, @list.head
    assert_equal 99, @list.search(99)
    assert_nil @list.search(1)

    @list.reset
    asset @list.empty
    assert_nil @list.head
    assert_nil @list.search(99)
    assert_nil @list.search(1)

    @list.insert(1)
    @list.insert(2)
    @list.insert(3)
    @another_list.insert(1)
    @another_list.insert(2)
    @another_list.insert(3)
    assert_equal @list, @another_list

    @another_list.delete(2)
    assert_not_equal @list, @another_list

  end
end

