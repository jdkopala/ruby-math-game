require './Player.rb'
require './Question.rb'

player1 = Player.new
player2 = Player.new
question = Question.new

game_on = true

while game_on
  puts question.ask_question
  answer = $stdin.gets.chomp
  if answer == question.answer
    puts "Yes!"
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    if question.turn == 1
      question = Question.new
      question.turn = 2
    elsif question.turn == 2
      question = Question.new
      question.turn = 1
    end
  else
    puts "No!"
    if question.turn == 1
      player1.lose_life
      question = Question.new
      question.turn = 2
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player1.lives == 0
        puts "Game over, Player 2 is the winner with #{player2.lives}/3"
        game_on = false
      end
    elsif question.turn == 2
      player2.lose_life
      question = Question.new
      question.turn = 1
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player2.lives == 0
        puts "Game over, Player 1 is the winner with #{player1.lives}/3"
        game_on = false
      end
    end
  end
end