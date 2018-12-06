

  def menu
    puts "Here are your options:
     - menu: displays this menu
       create: create a playlist and add songs
     - #add: add a song to an existing playlist
       delete: delete a song from an existing playlist
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
      until ['inward', 'outward', 'onward'].include? choice1 do
        puts "Please enter inward, outward, or onward."
        choice1 = gets.chomp
      end

    puts "Do you want this song to be vocal or instrumental"
    choice2 = gets.chomp
      # until [vocal, instrumental].include? choice2 do
      #   puts "Please enter vocal or instrumental.>"
      # choice2 = gets.chomp
      # end

    selection = Song.find_by(choice1, choice2)
    puts selection
    song_choice = ""
    puts "Select a song by title"
    song_choice = gets.chomp

      # until selection.include? song_choice do
      #   puts "Please select a song by title.>"
      # song_choice = gets.chomp
      # end
    end

# song_choice = user_song_choice_for_playlist


def add_song(initial_workid, song_choice)
    song_object = Song.where(:title => song_choice)
    songid = song_object[0].id
    our_song = InfoWorkshopSong.create(song_id: songid, info_workshop_id: initial_workid)
end

def user_input
  puts "Type next if you want to add another song. Or type quit to go back to the menu."
  input = gets.chomp

    # until [next, quit].include? input do
    #   puts "Type next if you want to add another song. Or type quit to go back to the menu.>"
    #   input = gets.chomp
    # end
 end

 #is this the recursive case?
 def user_input_for_playlist_continue(initial_workid, song)
   input = user_input
   #the only way out of running it again, is save to variable, then it only gets return value
   if input == "quit"
     return exit_workshop_playlist
     #break
   end
   while input != "quit"
   	#puts "Type next if you want to add another song. Or type quit to go back to the menu."
    #input = gets.chomp
      #if user_input == "next"
    	 next_song = user_song_choice_for_playlist
    	 add_song(initial_workid, next_song)
    	 #user_input
     #puts "Type next if you want to add another song. Or type quit to go back to the menu"
     #elsif user_input == "quit"
     	 #return exit_workshop_playlist
     	user_input_for_playlist_continue(initial_workid, song)
     #endclea
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


def display_workshops
   workshops = InfoWorkshop.show_workshops_by_name
   puts workshops
   #make sure to output the workshops to the screen but return workshops as objects
   workshops
end

def delete_workshop_selection
  display_workshops
   # workshops = InfoWorkshop.show_workshops_by_name
   #  puts workshops
   puts "Please enter the number of the playlist you would like to delete.
   Be careful, as this is not reversible!"
   selection = gets.chomp.to_i
   InfoWorkshop.destroy(selection)
   "Your workshop has been deleted"
  end

  def delete_song
    display_workshops
    puts "Select the number of the playlist that you want to edit"
    playlist_id = gets.chomp.to_i
    play_list_songs = InfoWorkshopSong.where(info_workshop_id: playlist_id)
  
    song_name_of_playlist =  play_list_songs.map do |el|
      "#{el.id}) #{el.song.title} "
    end
    
    puts song_name_of_playlist

    # iterate over play_list_songs
    # print out infoworkshopsong_id and song name
    # have a user select a infoworkshop song id to delete
    # delete said song
    # song = Song.find(id)
    # song.destroy
   
  end

# def create_playlists
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


# def delete_workshop_selection
#   workshops = InfoWorkshop.show_workshops_by_name
#    puts workshops
#   puts "Please enter the number of the workshop you would like to delete."
#   selection = gets.chomp.to_i
#   #InfoWorkshop.destroy(selection)
#  end

#  def info_workshop_songs_to_destroy(workshopid_to_destroy)
#  collection= InfoWorkshopSong.find_by_workshop_id
#    total_records_to_destroy = collection.select do |song|
#         song.workshop_id == workshopid_to_destroy
#     end
#     total_records_to_destroy.destroy
#  end



