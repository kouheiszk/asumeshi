class CreateKondateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :kondate_histories do |t|
      t.references :user, null: false, index: true
      t.references :kondate, null: false, index: true
      t.date :suggested_at, null: false, index: true

      t.timestamps
    end
  end
end
