class TowersOfHanoiGame
    def initialize
        @stacks = [[3, 2, 1], [], []]
    end
    
    def play
        display

        until won?
            puts "What tower do you want to move from?"
            from_tower = gets.to_i

            puts "What tower do you want to move to?"
            to_tower = gets.to_i

            if valid_move?(from_tower, to_tower)
                move(from_tower, to_tower)
                display
            else
                display
                puts "Invalid move. Try again."
            end
        end

        puts "You win!"
    end

    def won?
        @stacks[0].empty? && @stacks[1..2].any?(&:empty?)
    end

    def valid_move?(from_tower, to_tower)
        
    end
    
    
    
end