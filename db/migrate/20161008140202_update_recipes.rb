class UpdateRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :lang, :string, limit: 4, after: :source_uid, index: true
  end
end
