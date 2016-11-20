class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |el|
      puts el
      #sleep(1)
    end
    #sleep(2)
    #system("clear")

  end

  def require_sequence
    puts "Input the colors in the correct order."
    sequence_length.times do |i|
      user_guess = gets.chomp.downcase
      if user_guess != seq[i]
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Very good!  You got the sequence."
    #sleep(2)
    #system("clear")
  end

  def game_over_message
    puts "Oh no!  That was wrong.  Game over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end

if __FILE__ == $PROGRAM_NAME
  Simon.new.play
end
