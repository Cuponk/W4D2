require_relative 'piece.rb'
require_relative 'board.rb'
require_relative 'slideable.rb'

class Queen < Piece
    include Slideable
    attr_reader :symbol
    symbol = :queen
    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end
end
# board = Board.new
# test = Queen.new([0,0], board, 'white')
# p test.moves