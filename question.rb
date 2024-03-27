
=begin
  one randomly generated question per turn
  gives 2 numbers from 1 - 20
  asking for the calculated sum
=end

class Question 
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def sum
    num1 + num2
  end
end
