class RestaurantesController < ApplicationController

  def index
    @restaurantes = Restaurante.all
  end

  def show
  end

  def new
    @Restaurante = Restaurante.new
  end

  def edit
  end

  def create
    @restaurante = Restaurante.new(restaurante_params)
    if @restaurante.save
      redirect_to restaurantes_path
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  private
    def restaurante_params
      params.require(:restaurante).permit(:nombre)
    end
end
