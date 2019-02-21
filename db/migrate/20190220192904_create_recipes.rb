class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :gluten_free
      t.boolean :dairy_free
      t.string :image
      t.integer :ready_in_minutes
      t.integer :number_of_servings
      t.string :directions

      t.timestamps
    end
  end
end
