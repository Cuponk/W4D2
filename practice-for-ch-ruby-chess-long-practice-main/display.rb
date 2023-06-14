require_relative 'cursor.rb'
require 'colorize'
require_relative 'board.rb'

class Display


    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)

    end
    def render
        @board.grid.inject('') do |acc, row|
            acc + "#{row.join(' ')}\n"
        end
    end
    def play_game
        while true
            puts render
            @cursor.get_input
        end
    end


end

b = Display.new(Board.new)
b.play_game