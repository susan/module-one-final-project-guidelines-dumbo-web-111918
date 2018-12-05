class CreateInfoWorkshops < ActiveRecord::Migration[5.0]
  def change
  	create_table :info_workshops do |t|
  		t.string :name
  		t.integer :total_time
  	end
  end
end
