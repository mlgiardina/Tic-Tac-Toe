class Board
  attr_accessor :visual_board, :first, :second, :third, :fourth, :fifth, :sixth, :seventh, :eighth, :ninth
  def initialize
    @first = 1
    @second = 2
    @third = 3
    @fourth = 4
    @fifth = 5
    @sixth = 6
    @seventh = 7
    @eighth = 8
    @ninth = 9
    @real_board = [[1,2,3],[4,5,6],[7,8,9]]
  end
    def display_board
      puts"""
  +-------------------+
  |                   |
  |    Tic Tac Toe    |
  |___________________|
  |                   |
  +--   #{@first} | #{@second} | #{@third}   --+
  |    ---+---+---    |
  +--   #{@fourth} | #{@fifth} | #{@sixth}   --+
  |    ---+---+---    |
  +--   #{@seventh} | #{@eighth} | #{@ninth}   --+
  |___________________+
  |                   |
  |-----Have Fun!-----|
  |___________________|
"""
  end
end
