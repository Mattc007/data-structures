module DataStructures
  class Stack
    attr_reader :length, :top

    def initialize(size = 1)
      @length = size
      reset
    end

    def push(element)
      @array.push element
    end

    def pop
      @array.pop
    end

    private
    
    def reset
      @array = []*@length
      @top = nil
    end
  end
end
