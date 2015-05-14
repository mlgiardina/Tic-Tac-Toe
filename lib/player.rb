class Player
  attr_accessor :name, :player_move, :score

  def initialize
    self.score = 0
  end
  def make_move
    @player_move = gets.chomp.to_i
  end
end
