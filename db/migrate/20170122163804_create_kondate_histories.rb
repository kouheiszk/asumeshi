class CreateKondateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :kondate_histories do |t|
      t.references :user, null: false, index: true
      t.references :recipe, null: false, index: true
      t.string :keywords

      t.timestamps
    end
  end
end
