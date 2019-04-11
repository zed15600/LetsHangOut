class ChangeModelsNullableFields < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:personas, :nombre, false)
    change_column_null(:productos, :nombre, false)
    change_column_null(:productos, :precio, false)
    change_column_null(:productos, :porciones, false)
    change_column_default(:productos, :porciones, 1)
    change_column_null(:productos, :restaurante, false)
    change_column_null(:compras, :valor, false)
    change_column_null(:compras, :personas, false)
    change_column_null(:compras, :valorComun, false)
    change_column_default(:compras, :valorComun, 0)
    change_column_null(:restaurantes, :nombre, false)
    change_column_null(:detalle_compras, :compra, false)
    change_column_null(:detalle_compras, :persona, false)
    change_column_null(:detalle_compras, :producto, false)
    change_column_null(:pagos, :persona, false)
    change_column_null(:pagos, :valor, false)
  end
end
