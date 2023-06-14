require_relative 'piece.rb'

class Bishop > Piece
    attr_reader :symbol
    symbol = :bishop
    def move_dirs
        [[1, 1], [-1, -1], [-1, 1], [1, -1]]
    end
end