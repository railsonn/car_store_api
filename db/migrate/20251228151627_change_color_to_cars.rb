class ChangeColorToCars < ActiveRecord::Migration[8.1]
  def change
    change_column :cars, :color, :string, null: false, default: 'unknown'
  end
end
