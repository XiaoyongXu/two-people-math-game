require './player'
require './math_rand'

def start
  player1 = Player.new('Player1')
  player2 = Player.new('Player2')
  loop do
    question_ask(player1)
    question_ask(player2)
    puts "P1:#{player1.lives} vs P2:#{player2.lives}"
    if player1.lives == 0 or player2.lives == 0
      break
    end
    puts "----- NEW TURN ----"
  end
  if player1.lives == 0 && player2.lives == 0
    puts "Both lose"
  elsif player1.lives == 0 && player2.lives != 0
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
  elsif player2.lives == 0 && player1.lives != 0
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
  end
  puts "----- GAME OVER -----"
  puts "Good bye!"
end

start