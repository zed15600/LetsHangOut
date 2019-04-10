class PonerleValorPorDefectoAlSaldoDePersonas < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:personas, :saldo, 0)
    Persona.find_each do |persona|
      if persona.saldo == nil
        persona.saldo = 0
        persona.save
      end
    end
    change_column_null(:personas, :saldo, false)
  end
end
