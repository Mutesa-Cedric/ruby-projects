puts "welcome to ruby guessing game"
puts

puts "------------------------------"
puts
puts "pick up the maximum tries ..."

guess_limit=gets.chomp.to_i

if guess_limit==0||guess_limit>10

        if guess_limit==0
            return puts "sorry! maximum guess can not be zero!"
        else
            return puts "sorry! maximum guess can not be greater than ten!"
            
        end

else 

    puts "enter the minimum number"
    puts

    min_number=gets.chomp.to_i

    puts 

    puts "enter the maximum number"

    max_number=gets.chomp.to_i
    
    if min_number >=max_number
        return puts "maximum number must be greater than minimum number!"
    elsif max_number-min_number<=3
        return puts "maximum and minimum numbers are too close!"
    end

end

puts

puts "--------------------------------"
# beginning of a game

puts "you are goiing to guess a number between   #{min_number} and   #{max_number}"

puts "the game starts!"

puts "****************"

# generating a random number

random=rand(min_number..max_number)

puts random

puts "-----------------------"
puts "guess a number"

guessed_number=gets.chomp.to_i

# checking guess limits
if guessed_number>max_number
     puts "you must not guess a number greater than #{max_number}"
elsif guessed_number<min_number
    puts "you must not guess a number less than #{min_number}"
    
end

# asking to reenter a guess number

guesses=1

while guessed_number!=random
    if  guess_limit-guesses==0
        puts "**out of guesses!**"
        puts 
        3.times do
            puts "***you lost the game!!!!**"
        end
        return

    elsif guessed_number<random
        puts "too short!"
        
    elsif
        guessed_number>random
        puts "too long!"     
    end
   
    puts "try another guess.."

    guessed_number=gets.chomp.to_i

    guesses +=1
    
end

# conglaturating the winner
2.times do
    puts "****wow*****"
    puts "you have won"
end

#the game ends here

