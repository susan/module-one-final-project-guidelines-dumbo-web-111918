require 'pry'

def menu
    puts "Here are your options:
     - menu: displays this menu
     - display: displays playlists
     - create: create a playlist and add songs
     - deleteSong: deletes a song from an existing playlist
     - deletePlaylist: delete a playlist
     - exit: exits this program"
end

  def menu_input
    puts "Please enter an option"
    input = gets.chomp
  end

  def welcome
    puts "Welcome Playlist Creator!"
  end

  def exit
    puts "Goodbye!"
  end

  def exit_workshop_playlist
    puts "Finished playlist, back to main menu"
   menu
  end

def create_workshop_title
  puts "What is the name of your workshop?"
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
    puts "Do you want this song to be inward/outward/onward"
    "Type inward, outward, onward"
    choice1 = gets.chomp
      until ['inward', 'outward', 'onward'].include? choice1 do
        puts "Please enter inward, outward, or onward."
        choice1 = gets.chomp
      end

    puts "Do you want this song to be vocal or instrumental"
    choice2 = gets.chomp
       until ["vocal", "instrumental"].include? choice2 do
         puts "Please enter vocal or instrumental.>"
       choice2 = gets.chomp
       end

    selection = Song.find_by(choice1, choice2)
    puts selection
    #binding.pry
    song_choice = ""
    puts "Select a song by title"
    song_choice = gets.chomp
     #binding.pry
        until selection.include? song_choice do
          puts "Please select a song by title."
        song_choice = gets.chomp
        end
      song_choice
    end

# song_choice = user_song_choice_for_playlist


def add_song(initial_workid, song_choice)
    song_object = Song.where(:title => song_choice)
    #binding.pry
    songid = song_object[0].id
    our_song = InfoWorkshopSong.create(song_id: songid, info_workshop_id: initial_workid)
end

def user_input
  puts "Type next if you want to add another song. Or type quit to go back to the menu."
  input = gets.chomp

     until ["next", "quit"].include? input do
       puts "Type next if you want to add another song. Or type quit to go back to the menu."
      input = gets.chomp
     end
     input
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
   puts "Your workshop has been deleted"
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

    puts "Select the song number you want to delete. Be careful, as this is not reversible!"

    selection = gets.chomp.to_i

    InfoWorkshopSong.destroy(selection)
    puts "Your Song has been deleted"
    # iterate over play_list_songs *
    # print out infoworkshopsong_id and song name *
    # have a user select a infoworkshop song id to delete
    # delete said song
    # song = Song.find(id)
    # song.destroy
  end



