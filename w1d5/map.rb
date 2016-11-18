class Map
  attr_accessor :grid

  def initialize
    @grid = Array.new
  end

  def key_location(key)
    grid.each_index do |index|
      return index if grid[index].first == key
    end

    nil
  end

  def assign(key, value)
    location = key_location(key)

    if location
      grid[location][1] = value
    else
      grid << [key, value]
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  my_map = Map.new

  my_map.assign("this", "doesn't work")
  my_map.assign("code", "good")
  my_map.assign("this", "works")

  p my_map.grid
end
