require_relative 'piece.rb'

class Pawn < Piece
    attr_reader :symbol
    
    def symbol
        '🨅'
    end

    def move_dirs
        if @color == :white && @pos[0] == 1
            [[1, 0], [2,0]]
        elsif @color == :white
            [[1,0]]
        elsif @color == :black && @pos[0] == 6
            [[-1, 0], [-2,0]]
        elsif @color == :black
            [[-1,0]]
        end
    end
    
    def moves
        res = []
        moves_test = move_dirs
        moves_test.each do |dir_pos|
            #adding the originial position to the direction position
            res << dir_pos.each.with_index {|x,i| dir_pos[i] += @pos[i]}
        end
        res.select { |pos| @board.valid_pos?(pos) }
    end
end