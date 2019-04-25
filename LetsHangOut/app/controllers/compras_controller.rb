class ComprasController < ApplicationController

  def index
		@compras = Compra.all 
  end

  def show
  end

  def new
		print "custom print \n"
		if params != nil && params[:compra] != nil
			print params[:compra][:restaurante_id]
		print "\n"
		@rest_id = params[:compra][:restaurante_id]
		end
		@compra = Compra.new
  end

  def edit
  end

  def create
		pars = compra_params
		pars[:cantidad_personas] = pars[:cantidad_personas].to_i
		pars[:valorComun] = pars[:valorComun].to_f
		@compra = Compra.new({
			:restaurante_id => pars[:restaurante_id], 
			:cantidad_personas => pars[:cantidad_personas],
			:valorComun => pars[:valorComun],
			:valor => pars[:valor],
			:fecha => pars[:fecha],
			:descripcion => pars[:descripcion]
		})
		personas = []
		pars[:producto_id].each do |producto_id|
			producto = Producto.find(producto_id)
			for i in 1..producto.porciones do
				persona = Persona.find(pars[:persona_id].shift)
				detalleCompra = DetalleCompra.new({"persona" => persona, "producto" => producto})
				@compra.detalle_compras.append(detalleCompra)
				persona.saldo += producto.precio / producto.porciones
				persona.save
				if !personas.include?(persona.id)
					personas.push(persona.id)
				end
			end
		end
		if pars[:valorComun] > 0
			personas.each do |persona_id|
				persona = Persona.find(persona_id)
				persona.saldo += pars[:valorComun] / pars[:cantidad_personas]
				persona.save
			end
		end
		if @compra.save
			redirect_to compras_path
		else
			render :action => "new"
		end
  end

  def update
  end

  def destroy
  end

	private
		def compra_params
			params.require(:compra).permit(:fecha, :restaurante_id, :descripcion, :valorComun, :cantidad_personas, :valor, :producto_id => [], :persona_id => [])
		end
end
