class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.references :kondate, null: false, index: true
      t.references :recipe, null: false, index: true
      t.boolean :is_main_dish, null: false, index: true, default: false

      t.index [:kondate_id, :recipe_id], unique: true
    end
  end
end
