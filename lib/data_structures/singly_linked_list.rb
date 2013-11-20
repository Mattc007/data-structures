module DataStructures
  class SinglyLinkedList

    def initialize
      @sentinel = Element.new(nil, self)
      reset
    end

    def insert(item)
      e = Element.new(item, self)
      @sentinel = Element.new(e, self)
    end

    def delete(item)
    end

    def empty?
      head == @sentinel
    end

    def search(item)
    end

    def reset
      @sentinel.next = @sentinel
    end

    def head
      @sentinel.next
    end

  end

  class Element
    attr_reader :value
    attr_accessor :next

    def initialize(value, list)
      @value = value
      @next = list
    end
  end
end
