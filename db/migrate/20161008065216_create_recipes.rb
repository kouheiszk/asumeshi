class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :source
      t.string :source_uid, unique: true
      t.string :url
      t.string :title
      t.string :image_url
      t.timestamps

      t.index [:source, :source_uid], unique: true
    end
  end
end
