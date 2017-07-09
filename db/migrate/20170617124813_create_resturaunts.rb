class CreateResturaunts < ActiveRecord::Migration[5.0]
  def change
    create_table :resturaunts do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
