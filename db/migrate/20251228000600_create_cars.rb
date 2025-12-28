class CreateCars < ActiveRecord::Migration[8.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.float :price
      t.integer :color

      t.timestamps
    end
  end
end
