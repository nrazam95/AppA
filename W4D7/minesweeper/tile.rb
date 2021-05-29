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
    
    
end