class CreateDetalleCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_compras do |t|
      t.references :compra, foreign_key: true
      t.references :persona, foreign_key: true
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
