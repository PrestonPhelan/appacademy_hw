class Stack
  attr_accessor :stack

  def initialize
    # create ivar to store stack here!
    @stack = Array.new
  end

  def add(el)
    # adds an element to the stack
    stack << el
  end

  def remove
    # removes one element from the stack
    stack.pop
  end

  def show
    # return a copy of the stack
    stack.map { |el| el }
  end
end


if __FILE__ == $PROGRAM_NAME
  my_stack = Stack.new

  my_stack.add("blah")
  my_stack.add("bingo")
  my_stack.add("ta-dah!")

  p my_stack.show

  my_stack.remove

  p my_stack.show
end
