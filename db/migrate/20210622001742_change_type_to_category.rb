class ChangeTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :fruits, :type, :category
  end
end
