class CreateFruits < ActiveRecord::Migration[6.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end
