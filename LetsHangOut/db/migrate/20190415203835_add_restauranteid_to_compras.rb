class AddRestauranteidToCompras < ActiveRecord::Migration[5.2]
  def change
    add_reference :compras, :restaurante, foreign_key: true
  end
end
