require './question'
require './player'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
active_player = player1
inactive_player = player2
winning_player = nil

while true do

  puts "----- NEW TURN -----"

  question = Question.new
  puts "#{active_player.name}: #{question.show_problem}"

  answer = gets.chomp.to_i
  if answer == question.get_answer
    puts "Correct"
  else
    puts "Wrong"
    active_player.lose_life
  end

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

  if active_player.lives == 0
    winning_player = inactive_player
    break
  end

  if active_player == player1
    active_player = player2
    inactive_player = player1
  else
    active_player = player1
    inactive_player = player2
  end
end

puts "#{winning_player.name} wins with a score of #{winning_player.lives}/3"
puts "----- GAME OVER -----"
puts "Good Bye!"




