class AddFieldsToPagos < ActiveRecord::Migration[5.2]
  def change
    add_column :pagos, :fecha, :date
    add_column :pagos, :confirmacion_url, :string
  end
end
