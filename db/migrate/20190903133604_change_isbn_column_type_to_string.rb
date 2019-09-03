class ChangeIsbnColumnTypeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :isbn, :string, null: false, default: 0
  end
end
