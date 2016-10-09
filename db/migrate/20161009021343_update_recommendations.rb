class UpdateRecommendations < ActiveRecord::Migration[5.0]
  def change
    add_column :recommendations, :url, :string, after: :name_en
    add_column :recommendations, :image_url, :string, after: :url
    add_column :recommendations, :shop_url, :string, after: :image_url
  end
end
