class Map
  attr_accessor :map

  def initialize
    @map = Array.new
  end

  ##Helper method for searching for keys
  def key_location(key)
    map.each_index do |index|
      return index if map[index].first == key
    end

    nil
  end

  def assign(key, value)
    location = key_location(key)

    if location
      map[location][1] = value
    else
      map << [key, value]
    end
  end

  def lookup(key)
    map[key_location(key)][1]
  end

  def remove(key)
    map.delete_if { |pair| pair.first == key }
  end

  def show
    map.map { |el| el }
  end
end

if __FILE__ == $PROGRAM_NAME
  my_map = Map.new

  my_map.assign("this", "doesn't work")
  my_map.assign("code", "good")
  my_map.assign("this", "works")

  p my_map.show
  puts my_map.lookup("this")
  my_map.remove("code")
  p my_map.show
end
