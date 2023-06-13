require_relative "piece.rb"
class Board

    def initialize
        @board = Array.new(8){Array.new(8)}
        white_rows = [0,1]
        black_rows = [6,7]
        @board.each.with_index do |row, i|
            if white_rows.include?(i)
                row.each.with_index do |pos, j|
                   @board[i][j] = Piece.new([i,j], @board, 'white')
                end
            elsif black_rows.include?(i)
                row.each.with_index do |pos, j|
                   @board[i][j]  = Piece.new([i,j], @board, 'balck')
                end
            end
        end
    end
    def render
        @board.each do |row|
            puts
            row.each do |ele|
                if !ele.nil?
                    print ele.color
                else
                    print "_"
                end
            end
        end
    end
    def move_piece(star_pos, end_pos)
        if @board[star_pos[0]][ star_pos[1]].nil? || !valid_position?(star_pos)
            raise 'inconrrect star position'
        end
        
        if !@board[end_pos[0]][ end_pos[1]].nil? || !valid_position?(end_pos)
            raise 'inconrrect end position'
        end
        @board[star_pos[0]][ star_pos[1]], @board[end_pos[0]][ end_pos[1]] = @board[end_pos[0]][ end_pos[1]] , @board[star_pos[0]][ star_pos[1]]
        
    end
    def valid_position?(pos)
            x, y = pos
            x_right = x >= 0 && x <= 7
            y_right = y >= 0 && y <= 7
            x_right && y_right
    end

end
b = Board.new
b.move_piece([0, 0], [4,5])
p b.render