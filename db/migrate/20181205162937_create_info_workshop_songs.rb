class CreateInfoWorkshopSongs < ActiveRecord::Migration[5.0]
  def change
    	create_table :info_workshop_songs do |t|
  		t.integer :song_id
      t.integer :info_workshop_id
  	end
  end
end
