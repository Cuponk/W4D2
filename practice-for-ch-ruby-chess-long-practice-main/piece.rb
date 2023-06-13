class Piece
    attr_reader :color

    def initialize(pos, board, color)
        @pos = pos
        @board = board
        @color = color        
    end
end