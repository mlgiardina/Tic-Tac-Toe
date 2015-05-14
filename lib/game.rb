class Game
  attr_accessor :board
  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
  end
  def play
    start
    get_player_names
    # make_move
  end
  def start
    puts """
    +------------------------+
    +                        +
    + Welcome to Tic-Tac-Toe +
    +                        +
    +------------------------+
    """
    sleep 1
    system(`clear`)
    puts @board.display_board
  end
  def get_player_names
    puts "Player 1, what is your name?"
    @player1 = gets.chomp
    puts "Player 2, what is your name?"
    @player2 = gets.chomp
  end
  def player1_move
    @player1.make_move
  end
end
