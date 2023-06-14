require_relative './piece.rb'
require_relative './slideable.rb'

class King < Piece
  include Slideable

  def move_dirs
    KING_MOVES
  end

  def symbol
    '♔'
  end
end