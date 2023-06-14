require_relative 'piece.rb'
require_relative 'stepable.rb'
class Knight < Piece
    include Stepable
    attr_reader :symbol
    symbol = :bishop
    def move_dirs
        KNIGHT_MOVES
    end
end

board = Board.new
test = Knight.new([2,0], board, 'white')
p test.moves