class Persona < ApplicationRecord
  has_many :detalle_compras
  has_many :compras, through: :detalle_compras
  has_many :productos, through: :detalle_compra
	has_many :pagos
end
