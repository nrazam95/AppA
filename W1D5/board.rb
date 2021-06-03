#Phase 1

class Board
    attr_reader :rows

    def initialize(n = 8)
        @rows = Array.new(n) { Array.new(n) { nil }}
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end

    def add_piece(piece, pos)
        self[pos] = piece
    end
    
    
    def move_piece(start_pos, end_pos)
        piece = self[start_pos]
        self[end_pos] = piece
    end
    
    
end