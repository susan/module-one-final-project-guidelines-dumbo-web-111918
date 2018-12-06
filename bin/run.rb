require_relative '../config/environment'

initial_workid = create_workshop_title
song_choice = user_song_choice_for_playlist

create_playlist(initial_workid, song_choice)
user_input_for_playlist_continue(initial_workid, song_choice)
# add_song(initial_workid)
# user_input_for_playlist_continue

puts "HELLO WORLD"
