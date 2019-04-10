class AddRestauranteToProductos < ActiveRecord::Migration[5.2]
  def change
    add_reference :productos, :restaurante, foreign_key: true
  end
end
