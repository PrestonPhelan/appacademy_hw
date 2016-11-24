fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  new_array = array.map { |el| el }

  count_hash = {}

  0.upto(array.length - 1) do |idx|
    count = 0
    0.upto(array.length - 1) do |idx2|
      next if idx == idx2
      count += 1 if array[idx2].length > array[idx].length
    end

    count_hash[idx] = count
  end

  #count

  # made_switch = true
  # while made_switch
  #   made_switch = false
  #   0.upto(new_array.length - 2) do |idx|
  #     if new_array[idx].length < new_array[idx + 1].length
  #       new_array[idx], new_array[idx + 1] = new_array[idx + 1], new_array[idx]
  #       made_switch = true
  #     end
  #   end
  # end
  #
  # new_array.first
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



def fast_dance(tile, array)

end
