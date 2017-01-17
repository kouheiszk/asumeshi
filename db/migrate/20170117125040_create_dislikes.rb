class CreateDislikes < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikes do |t|
      t.string :name, null: false, index: true, unique: true

      t.timestamps
    end
  end
end
