first_name = "Akiba"
last_name = "Sato"

full_name = first_name + " " + last_name

puts full_name.reverse

first_number = "5"
second_number = "3"

def multiply (first_number, second_number)
    first_number.to_f * second_number.to_f
end

def divide (first_number, second_number)
    first_number.to_f / second_number.to_f
end

def subtract (first_number, second_number)
    first_number.to_f - second_number.to_f
end

def mod (first_number, second_number)
    first_number.to_f % second_number.to_f
end
puts "Numbers multipled equals #{multiply(first_number, second_number)}"

puts "Which method do you want to use?"
choice = gets.chomp

if (choice.to_i == 1)
    puts multiply(first_number, second_number)
elsif (choice.to_i == 2)
    puts divide(first_number, second_number)
elsif (choice.to_i == 3)
    puts subtract(first_number, second_number)
elsif (choice.to_i == 4)
    puts mod(first_number, second_number)
else
    puts "Try again."
end