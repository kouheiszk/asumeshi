class CreateKlassesRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :klasses_recommendations do |t|
      t.references :recommendation, foreign_key: true
      t.references :klass, foreign_key: true
    end
  end
end
