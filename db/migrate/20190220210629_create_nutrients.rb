class CreateNutrients < ActiveRecord::Migration[5.2]
  def change
    create_table :nutrients do |t|
      t.string :title
      t.integer :amount
      t.string :unit
      t.integer :percent_of_daily_needs

      t.timestamps
    end
  end
end
