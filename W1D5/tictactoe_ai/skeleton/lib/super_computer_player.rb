require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    node = TicTacToeNode.new(game.board, mark)

    possible_moves = node.children.shuffle

    node = possible_moves.find { |child| child.winning_node?(mark) }

    return node.prev_move_pos if node
    node = possible_moves.find { |child| !child.losing_node?(mark) }

    return node.prev_move_pos if node
    raise "Wait, it looks like I'm going to lose?"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Lex")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
