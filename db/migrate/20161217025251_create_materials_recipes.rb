class CreateMaterialsRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :materials_recipes do |t|
      t.references :material, null: false, index: true
      t.references :recipe, null: false, index: true
    end
  end
end
