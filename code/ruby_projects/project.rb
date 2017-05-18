cityhash = {
    "a" => "001", 
    "b" => "002", 
    "d" => "003", 
    "e" => "004", 
    "f" => "005", 
    "g" => "006", 
    "h" => "007", 
    "i" => "008", 
    "j" => "009", 
    "k" => "010"
}

def get_city_names (hash)
    hash.each {|k, v| puts k}
end

def get_area_code (hash, key)
    hash[key]
end

loop do
    puts "Do you want to look up a city name based on an area code? (Y/N)"
    answer = gets.chomp
    if (answer != "Y")
        break
    end
    
    puts "Which city do you want to look up?"
    get_city_names(cityhash)
    prompt = gets.chomp
    
    if cityhash.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(cityhash, prompt)}"
    else
        puts "Not valid city"
    end
    
end