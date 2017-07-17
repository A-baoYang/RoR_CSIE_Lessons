begin 

    puts "-------------------------"
    puts "Welcome to Rock Paper Scissors Game!"
    puts "-------------------------"

    begin
        puts "Enter your Choice! (R/P/S)"
        user_input = gets.chomp.upcase
    end while !["R", "P", "S"].include?(user_input)

        com_arr = ["R", "P", "S"]

        if com_arr.sample == user_input
            puts "TIE!"
        elsif com_arr.sample == "R" && user_input == "P"
            puts "WIN!"
        elsif com_arr.sample == "R" && user_input == "S"
            puts "LOSE!QQ"
        elsif com_arr.sample == "S" && user_input == "R"
            puts "WIN!"
        elsif com_arr.sample == "S" && user_input == "P"
            puts "LOSE!QQ"
        elsif com_arr.sample == "P" && user_input == "S"
            puts "WIN!"
        else com_arr.sample == "P" && user_input == "R"
            puts "LOSE!QQ"
        end

    begin 
        puts "Play Again?: Y / N"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

end while continue == "Y"
puts "See ya Soon next time!"