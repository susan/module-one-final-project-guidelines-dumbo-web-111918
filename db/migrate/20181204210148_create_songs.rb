class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    #create first table for Song Class
    create_table :songs do |t|
      t.string :title
      t.float :duration
      t.boolean :inward
      t.boolean :outward
      t.boolean :onward
      t.boolean :vocal
      t.boolean :instrumental
    end
  end
end
