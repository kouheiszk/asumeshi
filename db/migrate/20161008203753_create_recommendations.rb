class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.string :name_ja
      t.string :name_en
      t.timestamps
    end
  end
end
