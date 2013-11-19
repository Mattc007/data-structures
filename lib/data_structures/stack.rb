module DataStructures
  class Stack

    attr_reader :top

    def initialize(size = 1)
      @length = size
      reset
    end

    def push(element)
      raise 'stack overflow' if filled?
      @array.push element
      @top = @top ? @top + 1 : 1
      self
    end

    def pop
      raise 'stack underflow' if empty? || @top.nil?
      @top = @top == 1 ? @top = nil : @top - 1
      @array.pop
    end

    def empty?
      @top == 0
    end    

    private
    
    def reset
      @array = []*@length
      @top = nil
    end

    def filled?
      @top == @length
    end
  end
end
