require_relative 'piece.rb'

class Rook > Piece
    attr_reader :symbol
    symbol = :rook
    def move_dirs
        [[1, 0], [0, 1], [-1, 0], [0, -1]]
    end
end