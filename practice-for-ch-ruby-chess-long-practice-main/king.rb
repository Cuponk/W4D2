require_relative 'piece.rb'
require_relative 'stepable.rb'
class King < Piece
    include Stepable
    attr_reader :symbol
    symbol = :bishop
    def move_dirs
        KING_MOVES
    end
end

# board = Board.new
# test = King.new([2,0], board, 'white')
# p test.moves