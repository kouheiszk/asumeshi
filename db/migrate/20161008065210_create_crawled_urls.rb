class CreateCrawledUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :crawled_urls do |t|
      t.string :url, null: false, index: true, unique: true
      t.timestamps
    end
  end
end
