class ProductosController < ApplicationController

  def index
    @productos = Producto.all
  end

  def show
  end

  def new
    @producto = Producto.new
  end

  def edit
  end

  def create
    @producto = Producto.new(producto_params)
    if @producto.save
      redirect_to productos_path
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  private
  	def producto_params
    	params.require(:producto).permit(:restaurante_id, :nombre, :precio, :porciones)
		end
end
