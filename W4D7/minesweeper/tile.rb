class Tile
    
    DELTAS = [
        [-1, -1],
        [-1,  0],
        [-1,  1],
        [0,  -1],
        [0,   1],
        [1,  -1],
        [1,   0],
        [1,   1],
    ]

    def initialize(board, pos)
        @board, @pos = board, pos
        @bombed, @explore, @flagged = false, false, false
    end

    def bombed?
        @bombed
    end
    
    def explored?
        @explored
    end
    
    def flagged?
        @flagged
    end
    
    def neighbours
        adjacent_coords = DELTAS.map do |dx, dy|
            [pos[0] + dx, pos[1] + dy]
        end.select do |row, col|
            [row, col].all? do |coord|
                coord.between?(0, @board.grid_size - 1)
            end
        end

        adjacent_coords.map { |pos| @board[pos]}
    end
    
    def adjacent_bomb_count
        neighbours.select(&:bombed?).count
    end

    
    
end