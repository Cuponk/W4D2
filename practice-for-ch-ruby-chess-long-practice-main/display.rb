require_relative 'cursor.rb'
require 'colorize'
require_relative 'board.rb'
require 'byebug'
class Display

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
    end
    def render
        @board.grid.each.with_index do |row, i|
        puts
            row.each.with_index  do |ele, j| 
                colored = ele.to_s.colorize(choose_color([i,j]))
                print "#{ colored} "
            end
        end
    end

    def choose_color(pos)
        if pos == @cursor.cursor_pos
            return {:background => :green}
        end
        if pos.sum.even? && pos != @cursor.cursor_pos
            return {:background => :white}
        elsif pos.sum.odd? && pos != @cursor.cursor_pos
            return {:background => :black}
        end
        
    end

    def play_game
        while true
            render
            @cursor.get_input
            p @cursor.cursor_pos
        end
    end
end

b = Display.new(Board.new)
b.play_game
#"#{row.join(' ')}\n"