def create_playlist 
    puts "what is the name of your workshop"
    workshop_name = gets.chomp

    puts "do you want this song to be inward/outward/onward"
    "Type inward, outward, onward"
    choice1 = gets.chomp 
    puts "Do you want this song to be vocal or instrumental"
    choice2 = gets.chomp
    Song.find_by(choice1, choice2)
end

