class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :source, null: false
      t.string :source_uid, null: false, unique: true
      t.string :url, null: false
      t.string :title, null: false
      t.string :image_url, null: false
      t.timestamps

      t.index [:source, :source_uid], unique: true
    end
  end
end
