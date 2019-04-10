class PersonasController < ApplicationController

  def index
    @personas = Persona.all
  end

  def show
  end

  def new
    @persona = Persona.new
  end

  def edit
  end

  def create
    @persona = Persona.new(persona_params)
    if @persona.save
      redirect_to personas_path
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

  private
    def persona_params
      params.require(:persona).permit(:nombre, :alias)
    end
end
