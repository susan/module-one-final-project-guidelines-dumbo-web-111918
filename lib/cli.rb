
def create_playlist
    puts "what is the name of your workshop"
    workshop_name = ""
    workshop_name = gets.chomp
    #Student.create(name: 'Jon'), this is the idea for create a row
     our_workshop = InfoWorkshop.create(name: workshop_name)
    choice1 = ""
    choice2 = ""
    puts "do you want this song to be inward/outward/onward"
    "Type inward, outward, onward"
    #binding.pry
    choice1 = gets.chomp
    puts "Do you want this song to be vocal or instrumental"
    choice2 = gets.chomp
    selection = Song.find_by(choice1, choice2)
    puts selection
    song_choice = ""
    puts "Select a song by title"
    song_choice = gets.chomp

end