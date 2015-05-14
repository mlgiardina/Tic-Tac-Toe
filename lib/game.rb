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
    player1_move
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
    # puts @board.display_board
  end
  def get_player_names
    puts "Player 1, what is your name?"
    @player1.name = gets.chomp
    puts "Player 2, what is your name?"
    @player2 = gets.chomp
  end
  def player1_move
    @board.display_board
    puts "#{@player1.name}, make your move."
    @player1.make_move
    case @player1.player_move
    when 1
      @board.first = "X"
    when 2
      @board.second = "X"
    when 3
      @board.third = "X"
    when 4
      @board.fourth = "X"
    when 5
      @board.fifth = "X"
    when 6
      @board.sixth = "X"
    when 7
      @board.seventh = "X"
    when 8
      @board.eighth = "X"
    when 9
      @board.ninth = "X"
    else
      puts "That's not a valid response."
      player1_move
    end
  end
end
