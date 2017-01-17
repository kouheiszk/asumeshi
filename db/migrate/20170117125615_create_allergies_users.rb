class CreateAllergiesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :allergies_users do |t|
      t.references :allergy, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
