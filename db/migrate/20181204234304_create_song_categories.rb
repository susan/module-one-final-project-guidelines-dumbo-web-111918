class CreateSongCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :song_categories do |t|
     t.integer :song_id
     t.integer :category_id
    end
  end
end
