class AddFieldsToSalidas < ActiveRecord::Migration[5.2]
  def change
    add_column :compras, :fecha, :date
    add_column :compras, :descripcion, :string
  end
end
