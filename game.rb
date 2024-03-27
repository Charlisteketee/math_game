
=begin
  initialize game with 2 players
  each player takes one turn then it loops to the second player, and repeats
  each turn contains one question
  prompts the player to answer in the consol
  determines if the question was answered correctly or not
  takes a life or leave it as it if correct
  outputs the scores after each turn
  checks if a player has lost all lives and determines a winner
=end
module Game
  class Game
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @current_player = @player1
    end

    # method to start the game loop
    def start
      while true
        question = Question.new
        if @current_player.answer_question(question, @current_player.name)
          puts "#{@current_player.name}: YES! You are correct"
        else
          @current_player.score -= 1
          puts "#{@current_player.name}: Seriously? No!"
        end
        display_scores
        if @current_player.has_lost?
          puts "--- GAME OVER ---"
          winner = @current_player == @player1 ? @player2 : @player1
          puts "#{winner.name} wins with a score of #{winner.score}/3!"
          break
        end
        next_turn
      end
    end

    # method to switch players
    def next_turn
      @current_player = @current_player == @player1 ? @player2 : @player1
      puts "--- NEW TURN ---"
    end

    #method to display score
    def display_scores
      puts "P1: #{@player1.score} vs P2: #{@player2.score}"
    end
  end
end