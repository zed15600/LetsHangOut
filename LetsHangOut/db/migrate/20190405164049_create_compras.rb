class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.float :valor
      t.integer :personas
      t.float :valorComun

      t.timestamps
    end
  end
end
