

class Piece
    attr_reader :color, :pos

    def initialize(pos, board, color)
        @pos = pos
        @board = board
        @color = color        
    end

    def valid_pos
        res = []
        @board.each.with_index do |rows, i|
            rows.each.with_index do |ele, j|
                res << [i, j] if ele.nil?
            end
        end
        res
    end
end
