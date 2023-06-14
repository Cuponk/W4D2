require_relative './piece.rb'
require_relative './slideable.rb'

class Knight < Piece
  include Slideable

  def move_dirs
    KNIGHT_MOVES
  end

  def symbol
    '♘'
  end
end