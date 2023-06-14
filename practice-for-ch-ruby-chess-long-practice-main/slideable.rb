module Slideable
    HORIZONTAL_DIRS = [[1, 0], [0, 1], [-1, 0], [0, -1]]
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    def moves
        i = 1
        res = []
        while i <= 7
            move_dirs.map do |dir|
                # res << [dir[0] * i, dir[1] * i]
                res << dir.dup.map! { |j| j * i } 
            end
            i += 1
        end
        res.select { |pos| valid_pos.include?(pos) }
    
    end
end