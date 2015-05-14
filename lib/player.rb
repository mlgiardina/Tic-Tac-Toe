class Player
  attr_accessor :name, :player_move
  def make_move
    @player_move = gets.chomp.to_i
  end
end
