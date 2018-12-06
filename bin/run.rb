require_relative '../config/environment'

def runs_options

user_input = menu_input

if user_input == "exit"
    return exit 
end

    while user_input != "exit"
    #  puts "Please enter an option"
    #  input = gets.chomp

        case user_input 
        when "menu"
        menu
        user_input = runs_options   #  user_input
        when "create"
         initial_workid = create_workshop_title
         song_choice = user_song_choice_for_playlist

         create_playlist(initial_workid, song_choice)
         user_input_for_playlist_continue(initial_workid, song_choice)
         user_input = runs_options
        when "deleteSong"
         delete_song
         menu
         user_input = runs_options
        when "deletePlaylist"
         delete_workshop_selection
         menu
         user_input= runs_options
      end
      
    end 
      
end

welcome
menu
runs_options

# all_workshops = display_workshops
# delete_workshop_selection
# delete_song
# workshopid_to_destroy = delete_workshop_selection
# info_workshop_songs_to_destroy(workshopid_to_destroy)



# add_song(initial_workid)
# user_input_for_playlist_continue

# puts "HELLO WORLD"
