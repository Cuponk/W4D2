require_relative 'piece.rb'
require_relative 'slideable.rb'
class Bishop < Piece
    include Slideable
    attr_reader :symbol
    symbol = :bishop
    def move_dirs
        DIAGONAL_DIRS
    end
end

# board = Board.new
# test = Bishop.new([2,0], board, 'white')
# p test.moves