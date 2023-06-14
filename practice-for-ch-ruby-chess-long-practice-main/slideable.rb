module Slideable
    HORIZONTAL_DIRS = [[1, 0], [0, 1], [-1, 0], [0, -1]]
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

    def moves
        i = 1
        res = []
        while i <= 7
            move_dirs.map do |dir|
                res << dir.dup.map! { |j| j * i } 
            end
            i += 1
        end
        res.each do |dir_pos|
            #adding the originial position to the direction position
            dir_pos.each.with_index {|x,i| dir_pos[i] += @pos[i]}
        end
        res.select { |pos| valid_pos.include?(pos) }
    end
end