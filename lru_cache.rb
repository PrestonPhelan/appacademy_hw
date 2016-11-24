class LRUCache
  attr_accessor :cache

  def initialize(size)
    @cache = []
    @size = size
  end

  def count
    # returns number of elements currently in cache
    @cache.size
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache.shift if count >= @size
      @cache << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
    nil
  end

  private
  # helper methods go here!

end



class FastCache < LRUCache
  def initialize(size)
    @cache = Hash.new
    @size = size
  end

  def add(el)
    if @cache.key?(el)
      @cache.delete(el)
      @cache[el] = true
    else
      @cache.delete(@cache.keys.first) if count >= @size
      @cache[el] = true
    end
  end

  def show
    p @cache.keys
    nil
  end

end


if __FILE__ == $0
  johnny_cache = FastCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
end
