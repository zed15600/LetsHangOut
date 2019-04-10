class DetalleCompra < ApplicationRecord
  belongs_to :compra
  belongs_to :persona
  belongs_to :producto
end
