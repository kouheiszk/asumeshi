class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.belongs_to :recipe, index: true
      t.string :name, index: true
      t.timestamps
    end
  end
end
