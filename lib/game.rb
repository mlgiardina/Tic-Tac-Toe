class Game
  attr_accessor :board

  def initialize
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
    @still_playing = true
  end

  def how_many_players
    puts "1 or 2 players?"
    @number_of_players = gets.chomp.to_i
  end

  def play
    start
    how_many_players
    if @number_of_players == 2
      get_2_player_names
      two_players
    else
      single_player
    end
  end

  def start
    system("clear")
    puts """
    +------------------------+
    +                        +
    + Welcome to Tic-Tac-Toe +
    +                        +
    +------------------------+
    """
    sleep 1
  end

  def two_players
    while @still_playing
      player1_move
      check_for_winner
      player2_move
      check_for_winner
    end
    replay_game
  end

  def single_player
    get_1_player_name
    while @still_playing
      player1_move
      check_for_winner
      computer_move
      check_for_winner
    end
    replay_game
  end

  def computer_move
    if @board.first.class == Fixnum
      @board.first = "O"
    elsif @board.second.class == Fixnum
      @board.second = "O"
    elsif @board.third.class == Fixnum
      @board.third = "O"
    elsif @board.fourth.class == Fixnum
      @board.fourth = "O"
    elsif @board.fifth.class == Fixnum
      @board.fifth = "O"
    elsif @board.sixth.class == Fixnum
      @board.sixth = "O"
    elsif @board.seventh.class == Fixnum
      @board.seventh = "O"
    elsif @board.eighth.class == Fixnum
      @board.eighth = "O"
    elsif @board.ninth.class == Fixnum
      @board.ninth = "O"
    end
  end

  def get_1_player_name
    puts "What is your name?"
    @player1.name = gets.chomp
    @player2.name = "Computer"
  end
  def get_2_player_names
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
      if @board.first.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
        @board.first = "X"
      end
    when 2
      if @board.second.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
        @board.second = "X"
      end
    when 3
      if @board.third.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.third = "X"
      end
    when 4
      if @board.fourth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.fourth = "X"
      end
    when 5
      if @board.fifth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.fifth = "X"
      end
    when 6
      if @board.sixth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.sixth = "X"
      end
    when 7
      if @board.seventh.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.seventh = "X"
      end
    when 8
      if @board.eighth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.eighth = "X"
      end
    when 9
      if @board.ninth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player1_move
      else
      @board.ninth = "X"
      end
    else
      puts "That's not a valid response."
      sleep 1
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
      if @board.first.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.first = "O"
      end
    when 2
      if @board.second.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.second = "O"
      end
    when 3
      if @board.third.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.third = "O"
      end
    when 4
      if @board.fourth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.fourth = "O"
      end
    when 5
      if @board.fifth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.fifth = "O"
      end
    when 6
      if @board.sixth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.sixth = "O"
      end
    when 7
      if @board.seventh.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.seventh = "O"
    end
    when 8
      if @board.eighth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.eighth = "O"
      end
    when 9
      if @board.ninth.class != Fixnum
        puts "That spot is already taken, please make another selection."
        sleep 1
        player2_move
      else
        @board.ninth = "O"
      end
    else
      puts "That's not a valid response."
      sleep 1
      player2_move
    end
  end

  def check_for_winner
    if @board.first == "X" && @board.second == "X" && @board.third == "X"
      player1_wins
      replay_game
    elsif @board.fourth == "X" && @board.fifth == "X" && @board.sixth == "X"
      player1_wins
      replay_game
    elsif @board.seventh == "X" && @board.eighth == "X" && @board.ninth == "X"
      player1_wins
      replay_game
    elsif @board.first == "X" && @board.fourth == "X" && @board.seventh == "X"
      player1_wins
      replay_game
    elsif @board.second == "X" && @board.fifth == "X" && @board.eighth == "X"
      player1_wins
      replay_game
    elsif @board.third == "X" && @board.sixth == "X" && @board.ninth == "X"
      player1_wins
      replay_game
    elsif @board.first == "X" && @board.fifth == "X" && @board.ninth == "X"
      player1_wins
      replay_game
    elsif @board.third == "X" && @board.fifth == "X" && @board.seventh == "X"
      player1_wins
      replay_game
    end
    if @board.first == "O" && @board.second == "O" && @board.third == "O"
      player2_wins
      replay_game
    elsif @board.fourth == "O" && @board.fifth == "O" && @board.sixth == "O"
      player2_wins
      replay_game
    elsif @board.seventh == "O" && @board.eighth == "O" && @board.ninth == "O"
      player2_wins
      replay_game
    elsif @board.first == "O" && @board.fourth == "O" && @board.seventh == "O"
      player2_wins
      replay_game
    elsif @board.second == "O" && @board.fifth == "O" && @board.eighth == "O"
      player2_wins
      replay_game
    elsif @board.third == "O" && @board.sixth == "O" && @board.ninth == "O"
      player2_wins
      replay_game
    elsif @board.first == "O" && @board.fifth == "O" && @board.ninth == "O"
      player2_wins
      replay_game
    elsif @board.third == "O" && @board.fifth == "O" && @board.seventh == "O"
      player2_wins
      replay_game
    end
    #this line is ridiculous. i need to find a better way to write it.
    if @board.first.class != Fixnum && @board.second.class != Fixnum && @board.third.class != Fixnum && @board.fourth.class != Fixnum && @board.fifth.class != Fixnum && @board.sixth.class != Fixnum && @board.seventh.class != Fixnum && @board.eighth.class != Fixnum && @board.ninth.class != Fixnum
      puts "The game is a draw!"
      replay_game
    end
  end

  def player1_wins
    puts "Congratulations #{@player1.name}! You win!!!"
    @player1.score += 1
    @still_playing = false
    puts "#{@player1.name}: #{@player1.score} \n#{@player2.name}: #{@player2.score}"
  end

  def player2_wins
    puts "Congratulations #{@player2.name}! You win!!!"
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
