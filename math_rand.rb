def math_rand(num)
  number = rand(1...num)
end
def question_ask(player)
  number1 = math_rand(20)
  number2 = math_rand(20)
  result1 = (number1+number2).to_i
  puts "#{player.name}: what is #{number1} + #{number2}"
  answer1 = gets.chomp.to_i
  if answer1 == result1
    puts "Yes! You are correct"
  else
    puts "Seriously? No!"
    player.lose_live
  end
end