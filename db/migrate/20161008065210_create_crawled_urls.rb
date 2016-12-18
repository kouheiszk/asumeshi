class CreateCrawledUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :crawled_urls do |t|
      t.string :url, null: false
      t.timestamps

      t.index :url, unique: true
    end
  end
end
