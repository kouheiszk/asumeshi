class CreateKlasses < ActiveRecord::Migration[5.0]
  def change
    create_table :klasses do |t|
      t.string :name_jp
      t.string :name_en
      t.timestamps
    end
  end
end
