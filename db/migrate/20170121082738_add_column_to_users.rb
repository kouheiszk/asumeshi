class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :style, :integer, null: false, default: 0, after: :name
  end
end
