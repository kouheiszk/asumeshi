class CreateKondates < ActiveRecord::Migration[5.0]
  def change
    create_table :kondates do |t|
      t.string :source
      t.string :source_uid, unique: true
      t.string :url
      t.string :title
      t.string :image_url
      t.integer :cooking_time
      t.timestamps

      t.index [:source, :source_uid], unique: true
    end
  end
end
