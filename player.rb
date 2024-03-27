=begin
  players should have an instance variable of @name
  and score will be initialized at 3
  methods: attr_accessor, initialize, decrementing lives, checking if player has any lives left
=end

module Player
  class Player
    attr_accessor :name, :score

    def initialize(name)
      @name = name
      @score = 3
    end

    #method to answer the question in the terminal and compare it to the correct ansswer
    def answer_question(question, player_name)
      puts "#{player_name}: What does #{question.num1} + #{question.num2} equal?"
      answer = gets.chomp.to_i
      question.sum == answer
    end

    #method to check if the current player has lost
    def has_lost?
      @score == 0
    end
  end
end