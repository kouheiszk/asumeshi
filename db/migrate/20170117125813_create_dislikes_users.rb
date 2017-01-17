class CreateDislikesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikes_users do |t|
      t.references :dislike, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
