class AddPhoneToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :phone, :integer
  end
end
