class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :aisle
      t.string :season
      t.string :techniques
      t.string :taste
      t.string :tips


      t.timestamps
    end
  end
end
