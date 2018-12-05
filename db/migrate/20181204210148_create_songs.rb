class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    #create first table for Song Class
    create_table :songs do |t|
      t.string :title
      t.float :duration
    end
  end
end
