class AddAliasToPersonas < ActiveRecord::Migration[5.2]
  def change
    add_column :personas, :alias, :string
  end
end
