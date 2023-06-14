# generally use require for system files
require_relative './piece.rb'
require_relative './null_piece.rb'
require_relative './bishop.rb'
require_relative './pawn.rb'
require_relative './rook.rb'
require_relative './knight.rb'
require_relative './king.rb'
require_relative './queen.rb'


class Board
  attr_reader :grid, :null_piece

  def initialize
    @null_piece = NullPiece.instance
    @grid = Array.new(8) { Array.new(8, null_piece) }
    populate
  end

  def move_piece(start_pos, end_pos)
    piece = self[start_pos]
    self[end_pos] = piece
    self[start_pos] = null_piece
  end

  def valid_pos?(pos)
    pos.all? { |ele| ele >= 0 && ele <= 7 }
  end

  def [](pos)
    r, c = pos
    grid[r][c]
  end

  def []=(pos, val)
    r, c = pos
    grid[r][c] = val
  end

  def populate
      grid[1] = grid[1].map.with_index { |_, j| Pawn.new([1,j], :white, self) }
    
      grid[6] = grid[6].map.with_index { |_, j| Pawn.new([6,j], :black, self) }
      grid[0][0] = Rook.new([0,0], :white, self)
      grid[0][7] = Rook.new([0,7], :white, self)
      grid[7][0] = Rook.new([7,0], :black, self)
      grid[7][7] = Rook.new([7,7], :black, self)
      grid[0][2] = Bishop.new([0,2], :white, self)
      grid[0][5] = Bishop.new([0,5], :white, self)
      grid[7][2] = Bishop.new([7,3], :black, self)
      grid[7][5] = Bishop.new([7,5], :black, self)
      grid[0][1] = Knight.new([0,2], :white, self)
      grid[0][6] = Knight.new([0,6], :white, self)
      grid[7][1] = Knight.new([7,2], :black, self)
      grid[7][6] = Knight.new([7,6], :black, self)
      grid[0][3] = King.new([0,3], :white, self)
      grid[7][3] = King.new([7,3], :black, self)
      grid[0][4] = Queen.new([0,4], :white, self)
      grid[7][4] = Queen.new([7,4], :black, self)
  end

  def to_s
    grid.inject('') do |acc, row|
      acc + "#{row.join(' ')}\n"
    end
  end
end

b = Board.new
puts b


# p calls inspect and outputs to console with a new line
# puts calls to_s and outputs to console with a new line
# print calls to _s and outputs to console