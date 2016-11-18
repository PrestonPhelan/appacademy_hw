class Queue
  attr_accessor :queue

  def initialize
    @queue = Array.new
  end

  def enqueue(el)
    queue << el
  end

  def dequeue
    queue.shift
  end

  def show
    queue.map { |el| el }
  end
end

if __FILE__ == $PROGRAM_NAME
  my_queue = Queue.new

  my_queue.enqueue("blah")
  my_queue.enqueue("bingo")
  my_queue.enqueue("ta-dah!")

  p my_queue.show

  my_queue.dequeue

  p my_queue.show
end
