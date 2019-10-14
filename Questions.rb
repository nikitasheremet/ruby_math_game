require_relative "./Players.rb"
class Questions
    def self.set_random_numbers
        @number_1 = rand(1...20)
        @number_2 = rand(1...20)
    end

    def self.ask_question(player)
        puts "#{player}: What does #{@number_1} plus #{@number_2} equal?"
    end

    def self.get_answer
        @answer = gets.chomp.to_i
    end

    def self.check_answer(player)
        if (@number_1 + @number_2) == @answer
            puts "Correct!"
            
        else 
            puts "Wrong!"
            player.lives -= 1
        end
    end
end
# Questions.set_random_numbers
# Questions.ask_question
# Questions.get_answer
# Questions.check_answer


# def ask_math_question
#     random_number_1 = rand(1...20)
#     random_number_2 = rand(1...20)

#     puts "What does #{random_number_1} plus #{random_number_2} equal?"

#     answer = gets

#     if (random_number_1 + random_number_2) == answer
#         puts "Correct!"

# end