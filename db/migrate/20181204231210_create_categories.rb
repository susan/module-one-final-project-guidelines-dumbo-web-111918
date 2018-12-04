class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
    t.boolean :inward
    t.boolean :outward
    t.boolean :onward
    t.boolean :vocal
    t.boolean :instrumental
    end
  end
end
