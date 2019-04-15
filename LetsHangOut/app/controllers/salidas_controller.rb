class SalidasController < ApplicationController

  def index
    @salidas = Compra.all
  end

  def show
  end

  def new
    @salida = Compra.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
