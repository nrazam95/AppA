class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new}
    place_stones
  end

  def place_stones
    @cup.each_wit_index do |cup, i|
      next if i == 6 || i == 13
      4.times do
        cup << :stone
      end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty"if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    cup_i = start_pos
    until stones.empty?
      cup_i += 1
      cup_i = 0 if cup_i > 13
      if cup_i == 6
        @cup[6] << stones.pop if current_player_name == @name1
      elsif cup_i == 13
        @cup[13] << stones.pop if current_player_name == @name2
      else
        @cup[cup_i] << stones.pop
      end
    end

    render
    next_turn(cup_i)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cup.take(6).all? { |cup| cup.empty?} || @cups[7..12].all? { |cup| cup.empty?}
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cup[13].count

    if player1_count == player2_count
      :draw
    else
      player1_count > player2_count ? @name1 :; @name2
    end
  end
end
