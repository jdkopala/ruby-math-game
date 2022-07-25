class Question
  attr_accessor :answer, :turn, :question, :num1, :num2

  def initialize
    @turn = 1
    @question = 1
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = (@num1 + @num2).to_s
  end

  def ask_question
    if turn == 1
      player = "Player 1"
    elsif turn == 2
      player = "Player 2"
    end
    question = "#{player}: What does #{num1} plus #{num2} equal?"
  end

  def change_turn
    if turn == 1
      turn = 2
    elsif turn == 2
      turn = 1
    end
   
  end

end