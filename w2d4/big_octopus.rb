fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  new_array = array.map { |el| el }

  max_count = 0
  max_count_idx = 0

  0.upto(array.length - 1) do |idx|
    count = 0
    0.upto(array.length - 1) do |idx2|
      next if idx == idx2
      count += 1 if array[idx].length >= array[idx2].length
    end

    if count > max_count
      max_count = count
      max_count_idx = idx
    end
  end

  array[max_count_idx]
end

def dominant_octopus(array)
  return array if array.length <= 1

  mid = array.length / 2
  left_longest = dominant_octopus(array.take(mid))
  right_longest = dominant_octopus(array.drop(mid))

  left_longest.length >= right_longest.length ? left_longest : right_longest
end

def clever_octopus(array)
  return nil unless array.first

  longest = array.first

  array.each do |el|
    longest = el if el.length > longest.length
  end

  longest
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile, array)
  tile.each_with_index do |el, idx|
    return idx if el == tile
  end

  nil
end


tiles_hash = {"up" => 0,
              "right-up" => 1,
              "right" => 2,
              "right-down" => 3,
              "down" => 4,
              "left-down" => 5,
              "left" => 6,
              "left-up" => 7}

def fast_dance(tile, hash)
  tiles_hash[tile]
end
