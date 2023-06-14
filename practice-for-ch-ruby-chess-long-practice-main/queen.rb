require_relative './piece.rb'
require_relative './slideable.rb'

class Queen < Piece
  attr_reader :symbol

  include Slideable

  def move_dirs
    DIAGONAL_DIRS + HORIZONTAL_DIRS
  end

  def symbol
    '♗'
  end
end