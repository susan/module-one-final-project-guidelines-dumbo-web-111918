
  def menu
    puts "Here are your options:
     - menu: displays this menu
       create: create a playlist and add songs
     - add: add a song to an existing playlist
       see: displays the songs in a playlist
     - exit: exits this program"
  end

  def exit_workshop_playlist
    puts "Finished playlist, back to main menu"
   menu
  end

def create_workshop_title
  puts "what is the name of your workshop"
    workshop_name = ""
    workshop_name = gets.chomp
    #Student.create(name: 'Jon'), this is the idea for create a row
    our_workshop = InfoWorkshop.create(name: workshop_name)
    initial_workid = our_workshop.id
end

# initial_workid = create_workshop_title


 def user_song_choice_for_playlist
	  choice1 = ""
    choice2 = ""
    puts "do you want this song to be inward/outward/onward"
    "Type inward, outward, onward"
    choice1 = gets.chomp
    puts "Do you want this song to be vocal or instrumental"
    choice2 = gets.chomp
    selection = Song.find_by(choice1, choice2)
    puts selection
    song_choice = ""
    puts "Select a song by title"
    song_choice = gets.chomp
end

# song_choice = user_song_choice_for_playlist

def add_song(initial_workid, song_choice)
    song_object = Song.where(:title => song_choice)
    songid = song_object[0].id
    our_song = InfoWorkshopSong.create(song_id: songid, info_workshop_id: initial_workid)
end

def user_input
  puts "Type next_song if you want to add another song. Or type quit to go back to the menu."
  input = gets.chomp
 end

 #is this the recursive case?
 def user_input_for_playlist_continue(initial_workid, song)
   user_input
   if input == "quit"
     return exit_workshop_playlist
     #break
   end
   while input != "quit"
   	puts "Type next_song if you want to add another song. Or type quit to go back to the menu."
    input = gets.chomp
     if user_input == "next_song"
    	 next_song = user_song_choice_for_playlist
    	add_song(initial_workid, next_song)
    	user_input
     #puts "Type next if you want to add another song. Or type quit to go back to the menu"
    # elsif input == "quit"
     	 #return exit_workshop_playlist
     end
  	user_input_for_playlist_continue(initial_workid, song)
   end
 end

# def user_input_for_playlist_continue
#   puts "Type next if you want to add another song. Or type quit to go back to the menu"
#   input = gets.chomp
#   while input
#   	puts "Type next if you want to add another song. Or type quit to go back to the menu"
#     input = gets.chomp
#   	  case input
#   	  when "next"
#   	  	add_song
#   	  else "quit"
#         exit_workshop_playlist
#         break
#       end
#    end
# end


 def create_playlist(initial_workid, song)
     # create_workshop_title
    add_song(initial_workid, song)
 end


# def create_playlist
#     puts "what is the name of your workshop"
#     workshop_name = ""
#     workshop_name = gets.chomp
#     #Student.create(name: 'Jon'), this is the idea for create a row
#      our_workshop = InfoWorkshop.create(name: workshop_name)
#      workshopid = our_workshop.id
#     choice1 = ""
#     choice2 = ""
#     puts "do you want this song to be inward/outward/onward"
#     "Type inward, outward, onward"
#     #binding.pry
#     choice1 = gets.chomp
#     puts "Do you want this song to be vocal or instrumental"
#     choice2 = gets.chomp
#     selection = Song.find_by(choice1, choice2)
#     puts selection
#     song_choice = ""
#     puts "Select a song by title"
#     song_choice = gets.chomp
#     #song_object = Song.find_by(title: song_choice)
#     #binding.pry
#     song_object = Song.where(:title => song_choice)
#     songid = song_object[0].id
#     our_first_song = InfoWorkshopSong.create(song_id: songid, info_workshop_id: workshopid)
# end




