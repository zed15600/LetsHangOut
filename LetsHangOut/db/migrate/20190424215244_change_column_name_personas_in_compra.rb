class ChangeColumnNamePersonasInCompra < ActiveRecord::Migration[5.2]
  def change
		rename_column :compras, :personas, :cantidad_personas
  end
end
