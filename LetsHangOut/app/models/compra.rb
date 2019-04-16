class Compra < ApplicationRecord
  has_many :detalle_compras
  has_many :personas, through: :detalle_compras
  has_many :productos, through: :detalle_compras
	has_one :restaurante
end
