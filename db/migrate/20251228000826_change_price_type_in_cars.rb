class ChangePriceTypeInCars < ActiveRecord::Migration[8.1]
  def up
    change_column :cars, :price, :decimal, precision: 10, scale: 2
  end

  def down
    change_column :cars, :price, :float
  end
end
