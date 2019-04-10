class CreatePagos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagos do |t|
      t.references :persona, foreign_key: true
      t.float :valor

      t.timestamps
    end
  end
end
