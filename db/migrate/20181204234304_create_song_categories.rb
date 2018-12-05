class CreateSongCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :SongCategories do |t|
     t.integer :song_id
     t.integer :category_id

    end

  end
end
