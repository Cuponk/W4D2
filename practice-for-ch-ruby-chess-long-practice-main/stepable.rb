module Stepable
    KNIGHT_MOVES = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
    KING_MOVES = [[1, 1], [-1, -1], [-1, 1], [1, -1], [1, 0], [0, 1], [-1, 0], [0, -1]]
    def moves
        res = move_dirs.each do |dir_pos|
            #adding the originial position to the direction position
            dir_pos.each.with_index {|x,i| dir_pos[i] += @pos[i]}
        end
        res.select { |pos| valid_pos.include?(pos) }

    end


end