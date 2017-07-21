class Player
    def initialize(name)
        @name = name
    end
end

#human Player class
class Human < Player
    def get_gesture
        input = gets.chomp
    end
end

#ComPlayer class
class Computer < Player
    def get_gesture
        input = ["R", "P", "S"].shuffle!.last
    end
end


class RPS
    def initialize
        show_message
    end

    def intro
        puts "-------------------------"
        puts "Welcome to Rock Paper Scissors Game!"
        puts "-------------------------"
        puts "   "
        puts "What's your name?"
        @name = gets.chomp
    end

    def get_player_gestures
        begin
            puts "Enter R / P / S, choose one"
            @human = Human.new(@name)
            @human_input = @human.get_gesture
            @computer = Computer.new("com")
            @computer_input = @computer.get_gesture
        end while !["R", "P", "S"].include?(@human_input)
        puts "YOU: #{@human_input} vs COM: #{@computer_input}"
    end

    def decide
        if @computer_input == @human_input
            puts "TIE"
        elsif @computer_input == "R" && @human_input == "P"
            puts "WIN"
        elsif @computer_input == "R" && @human_input == "S"
            puts "LOSE!QQ"
        elsif @computer_input == "S" && @human_input == "R"
            puts "WIN!"
        elsif @computer_input == "S" && @human_input == "P"
            puts "LOSE!QQ"
        elsif @computer_input == "P" && @human_input == "S"
            puts "WIN!"
        else @computer_input == "P" && @human_input == "R"
            puts "LOSE!QQ"
        end
    end

    def continue?
        begin 
            puts "Play Again?: Y / N"
            @continue = gets.chomp.upcase
        end while !["Y", "N"].include?(@continue)
    end

    def show_message
        intro

        begin
            get_player_gestures
            decide
            continue?
        end while @continue == "Y"

        puts "See ya Soon next time!"
        
    end
end

# --------- Main Progam Starts Here ------------
game = RPS.new