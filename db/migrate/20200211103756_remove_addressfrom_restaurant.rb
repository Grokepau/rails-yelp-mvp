class RemoveAddressfromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :adress
    add_column :restaurants, :address, :string
  end
end
