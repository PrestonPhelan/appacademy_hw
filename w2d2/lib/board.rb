class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    cups.each_index do |idx|
      next if idx == 6 || idx == 13
      4.times { cups[idx] << :stone }
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    start_cups = [1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12]
    raise "Invalid starting cup" if !start_cups.member?(start_pos) || @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    @cups[start_pos] = []

    drop_pos = start_pos
    until stones == 0
      drop_pos += 1
      drop_pos = 0 if drop_pos > 13
      next if drop_pos == 6 && @name2 == current_player_name
      next if drop_pos == 13 && current_player_name == @name1
      @cups[drop_pos] << :stone
      stones -= 1
    end

    render
    next_turn(drop_pos)

    return :prompt if drop_pos == 6 && @name1 == current_player_name
    return :prompt if drop_pos == 13 && @name2 == current_player_name
    return :switch if @cups[drop_pos].length == 1
    drop_pos
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
