class CreateKondatesRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :kondates_recipes do |t|
      t.references :kondate, index: true
      t.references :recipe, index: true
    end
  end
end
