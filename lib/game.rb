class Game
  attr_accessor :board

  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
    @still_playing = true
  end

  def play
    start
    get_player_names
    while @still_playing
      player1_move
      check_for_winner
      player2_move
      check_for_winner
    end
    replay_game

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
    system("clear")
  end

  def get_player_names
    puts "Player 1, what is your name?"
    @player1.name = gets.chomp
    puts "Player 2, what is your name?"
    @player2.name = gets.chomp
  end

  def player1_move
    system("clear")
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

  def player2_move
    system("clear")
    @board.display_board
    puts "#{@player2.name}, make your move."
    @player2.make_move
    case @player2.player_move
    when 1
      @board.first = "O"
    when 2
      @board.second = "O"
    when 3
      @board.third = "O"
    when 4
      @board.fourth = "O"
    when 5
      @board.fifth = "O"
    when 6
      @board.sixth = "O"
    when 7
      @board.seventh = "O"
    when 8
      @board.eighth = "O"
    when 9
      @board.ninth = "O"
    else
      puts "That's not a valid response."
      player2_move
    end
  end

  def check_for_winner
    if @board.first == "X" && @board.second == "X" && @board.third == "X"
      player1_wins
    elsif @board.fourth == "X" && @board.fifth == "X" && @board.sixth == "X"
      player1_wins
    elsif @board.seventh == "X" && @board.eighth == "X" && @board.ninth == "X"
    player1_wins
    elsif @board.first == "X" && @board.fourth == "X" && @board.seventh == "X"
      player1_wins
    elsif @board.second == "X" && @board.fifth == "X" && @board.eighth == "X"
      player1_wins
    elsif @board.third == "X" && @board.sixth == "X" && @board.ninth == "X"
      player1_wins
    elsif @board.first == "X" && @board.fifth == "X" && @board.ninth == "X"
      player1_wins
    elsif @board.third == "X" && @board.fifth == "X" && @board.seventh == "X"
      player1_wins
    end
    if @board.first == "O" && @board.second == "O" && @board.third == "O"
      player2_wins
    elsif @board.fourth == "O" && @board.fifth == "O" && @board.sixth == "O"
      player2_wins
    elsif @board.seventh == "O" && @board.eighth == "O" && @board.ninth == "O"
      player2_wins
    elsif @board.first == "O" && @board.fourth == "O" && @board.seventh == "O"
      player2_wins
    elsif @board.second == "O" && @board.fifth == "O" && @board.eighth == "O"
      player2_wins
    elsif @board.third == "O" && @board.sixth == "O" && @board.ninth == "O"
      player2_wins
    elsif @board.first == "O" && @board.fifth == "O" && @board.ninth == "O"
      player2_wins
    elsif @board.third == "O" && @board.fifth == "O" && @board.seventh == "O"
      player2_wins
    end
  end

  def player1_wins
    puts "Congratulations #{@player1}.name! You win!!!"
    @player1.score += 1
    @still_playing = false
    puts "#{@player1.name}: #{@player1.score} \n#{@player2.name}: #{@player2.score}"
  end

  def player2_wins
    puts "Congratulations #{@player2}.name! You win!!!"
    @player2.score += 1
    @still_playing = false
    puts "#{@player1.name}: #{@player1.score} \n#{@player2.name}: #{@player2.score}"
  end

  def replay_game
    puts "Would you like to play again? (y or n)"
    replay_choice = gets.chomp.downcase
    if replay_choice == "y"
      @board = Board.new
      @still_playing = true
      play
    elsif replay_choice == "n"
      puts "Thank you for playing! The final score was:\n#{@player1.name}: #{@player1.score} \n#{@player2.name}: #{@player2.score}"
      exit
    else
      puts "That isn't a valid choice. Please pick 'y' or 'n'"
      replay_game
    end
  end
end
