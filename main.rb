require "./Players.rb"
require "./Questions.rb"

player_1 = Players.new("nikita")
player_2 = Players.new("Cam")

current_player = player_2

while player_1.lives > 0 && player_2.lives > 0 do
    puts "#{player_1.name}: #{player_1.lives?} vs #{player_2.name}: #{player_2.lives?}"

    if current_player == player_2
        current_player = player_1
    else
        current_player = player_2
    end

    puts "---- NEW TURN ----"

    Questions.set_random_numbers
    Questions.ask_question(current_player.name)
    Questions.get_answer
    Questions.check_answer(current_player)
end 

puts "----GAME OVER---"
if player_1.lives == 0
    puts "PLAYER 2 WINS"
else 
    puts "PLAYER 1 WINS"
end