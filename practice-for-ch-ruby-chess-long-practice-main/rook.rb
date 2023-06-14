require_relative 'piece.rb'
require_relative 'slideable.rb'
class Rook < Piece
    include Slideable
    attr_reader :symbol
    symbol = :rook
    def move_dirs
        HORIZONTAL_DIRS
    end
end

# board = Board.new
# test = Rook.new([0,0], board, 'white')
# p test.moves